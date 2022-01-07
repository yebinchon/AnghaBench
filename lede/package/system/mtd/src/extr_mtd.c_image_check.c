
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int magic ;






 scalar_t__ SEAMA_MAGIC ;
 scalar_t__ TRX_MAGIC ;
 scalar_t__ WRGG03_MAGIC ;
 scalar_t__ WRG_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ buf ;
 int buflen ;
 int fprintf (int ,char*) ;
 int imageformat ;
 scalar_t__ le32_to_cpu (int ) ;
 int read (int,scalar_t__,int) ;
 int stdout ;
 int strcmp (char const*,char*) ;
 int trx_check (int,char const*,scalar_t__,int*) ;

__attribute__((used)) static int
image_check(int imagefd, const char *mtd)
{
 uint32_t magic;
 int ret = 1;
 int bufread;

 while (buflen < sizeof(magic)) {
  bufread = read(imagefd, buf + buflen, sizeof(magic) - buflen);
  if (bufread < 1)
   break;

  buflen += bufread;
 }

 if (buflen < sizeof(magic)) {
  fprintf(stdout, "Could not get image magic\n");
  return 0;
 }

 magic = ((uint32_t *)buf)[0];

 if (be32_to_cpu(magic) == TRX_MAGIC)
  imageformat = 130;
 else if (be32_to_cpu(magic) == SEAMA_MAGIC)
  imageformat = 131;
 else if (le32_to_cpu(magic) == WRG_MAGIC)
  imageformat = 129;
 else if (le32_to_cpu(magic) == WRGG03_MAGIC)
  imageformat = 128;

 switch (imageformat) {
 case 130:
  if (trx_check)
   ret = trx_check(imagefd, mtd, buf, &buflen);
  break;
 case 131:
 case 129:
 case 128:
  break;
 default:




  break;
 }

 return ret;
}
