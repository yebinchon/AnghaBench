
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seama_entity_header {int md5; int size; } ;
typedef size_t ssize_t ;
typedef int digest ;
typedef int MD5_CTX ;


 int EIO ;
 int ENOMEM ;
 int MD5_Final (unsigned char*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,char*,size_t) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int htonl (size_t) ;
 char* malloc (size_t) ;
 int memcmp (unsigned char*,int ,int) ;
 int memcpy (int ,unsigned char*,int) ;
 int perror (char*) ;
 size_t pread (int,char*,size_t,size_t) ;
 int quiet ;
 int stderr ;

int
seama_fix_md5(struct seama_entity_header *shdr, int fd, size_t data_offset, size_t data_size)
{
 char *buf;
 ssize_t res;
 MD5_CTX ctx;
 unsigned char digest[16];
 int i;
 int err = 0;

 buf = malloc(data_size);
 if (!buf) {
  err = -ENOMEM;
  goto err_out;
 }

 res = pread(fd, buf, data_size, data_offset);
 if (res != data_size) {
  perror("pread");
  err = -EIO;
  goto err_free;
 }

 MD5_Init(&ctx);
 MD5_Update(&ctx, buf, data_size);
 MD5_Final(digest, &ctx);

 if (!memcmp(digest, shdr->md5, sizeof(digest))) {
  if (quiet < 2)
   fprintf(stderr, "the header is fixed already\n");
  return -1;
 }

 if (quiet < 2) {
  fprintf(stderr, "new size:%u, new MD5: ", data_size);
  for (i = 0; i < sizeof(digest); i++)
   fprintf(stderr, "%02x", digest[i]);

  fprintf(stderr, "\n");
 }


 shdr->size = htonl(data_size);


 memcpy(shdr->md5, digest, sizeof(digest));

err_free:
 free(buf);
err_out:
 return err;
}
