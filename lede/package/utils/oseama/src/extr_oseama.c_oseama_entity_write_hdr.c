
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct seama_entity_header {void* imagesize; int metasize; void* magic; int md5; } ;
typedef int hdr ;
typedef int buf ;
typedef int MD5_CTX ;
typedef int FILE ;


 int EIO ;
 int MD5_Final (int ,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,int *,size_t) ;
 size_t SEAMA_MAGIC ;
 int SEEK_SET ;
 int cpu_to_be16 (size_t) ;
 void* cpu_to_be32 (size_t) ;
 int fprintf (int ,char*,char*) ;
 size_t fread (int *,int,int ,int *) ;
 int fseek (int *,int,int ) ;
 size_t fwrite (struct seama_entity_header*,int,int,int *) ;
 int oseama_min (int,size_t) ;
 char* seama_path ;
 int stderr ;

__attribute__((used)) static int oseama_entity_write_hdr(FILE *seama, size_t metasize, size_t imagesize) {
 struct seama_entity_header hdr = {};
 uint8_t buf[128];
 size_t length = imagesize;
 size_t bytes;
 MD5_CTX ctx;

 fseek(seama, sizeof(hdr) + metasize, SEEK_SET);
 MD5_Init(&ctx);
 while ((bytes = fread(buf, 1, oseama_min(sizeof(buf), length), seama)) > 0) {
  MD5_Update(&ctx, buf, bytes);
  length -= bytes;
 }
 MD5_Final(hdr.md5, &ctx);

 hdr.magic = cpu_to_be32(SEAMA_MAGIC);
 hdr.metasize = cpu_to_be16(metasize);
 hdr.imagesize = cpu_to_be32(imagesize);

 fseek(seama, 0, SEEK_SET);
 bytes = fwrite(&hdr, 1, sizeof(hdr), seama);
 if (bytes != sizeof(hdr)) {
  fprintf(stderr, "Couldn't write Seama entity header to %s\n", seama_path);
  return -EIO;
 }

 return 0;
}
