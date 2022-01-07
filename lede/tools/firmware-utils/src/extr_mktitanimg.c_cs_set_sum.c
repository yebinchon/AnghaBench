
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned long CKSUM_MAGIC_NUMBER ;
 int SEEK_END ;
 int fseek (int *,int,int ) ;
 int fwrite (unsigned long*,int,int,int *) ;

int cs_set_sum(FILE *fp, unsigned long sum, int tagged)
{
 unsigned long magic = CKSUM_MAGIC_NUMBER;

 if(tagged)
  fseek(fp, -8, SEEK_END);
 else
  fseek(fp, 0, SEEK_END);

 if(fwrite(&magic, 1, 4, fp) < 4)
  return 0;
 if(fwrite(&sum, 1, 4, fp) < 4)
  return 0;

 return 1;
}
