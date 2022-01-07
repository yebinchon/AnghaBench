
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;
typedef int MD5_CTX ;
typedef int FILE ;


 int MAX_SEAMA_META_SIZE ;
 int MD5_Final (int *,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,int *,size_t) ;
 int feof (int *) ;
 int ferror (int *) ;
 size_t fread (int *,int,size_t,int *) ;

__attribute__((used)) static size_t calculate_digest(FILE * fh, size_t size, uint8_t * digest)
{
 MD5_CTX ctx;
 size_t bytes_left, bytes_read, i;
 uint8_t buf[MAX_SEAMA_META_SIZE];

 bytes_left = size ? size : sizeof(buf);
 bytes_read = 0;

 MD5_Init(&ctx);
 while (!feof(fh) && !ferror(fh) && bytes_left > 0)
 {
  i = bytes_left < sizeof(buf) ? bytes_left : sizeof(buf);
  i = fread(buf, sizeof(char), i, fh);
  if (i > 0)
  {
   MD5_Update(&ctx, buf, i);
   bytes_read += i;
  }
  if (size) bytes_left -= i;
 }
 MD5_Final(digest, &ctx);
 return bytes_read;
}
