
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MD5_CTX ;
typedef int FILE ;


 int BUF_SIZE ;
 int MD5_Final (int *,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,char**,size_t) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char**,int,int,int *) ;

__attribute__((used)) static int md5_file(const char *filename, uint8_t *dst)
{
 FILE *fp_src;
 MD5_CTX ctx;
 char buf[BUF_SIZE];
 size_t bytes_read;

 MD5_Init(&ctx);

 fp_src = fopen(filename, "r+b");
 if (!fp_src) {
  return -1;
 }
 while (!feof(fp_src)) {
  bytes_read = fread(&buf, 1, BUF_SIZE, fp_src);
  MD5_Update(&ctx, &buf, bytes_read);
 }
 fclose(fp_src);

 MD5_Final(dst, &ctx);

 return 0;
}
