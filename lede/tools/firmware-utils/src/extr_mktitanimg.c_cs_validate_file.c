
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int cs_calc_sum (int *,unsigned long*,int) ;
 int cs_get_sum (int *,unsigned long*) ;
 int cs_is_tagged (int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;

int cs_validate_file(char *filename)
{
 FILE *pFile = ((void*)0);
 unsigned long sum = 0, res = 0;

 if((pFile = fopen(filename, "r")) == ((void*)0))
  return 0;

 if(!cs_is_tagged(pFile))
 {
  fclose(pFile);
  return 0;
 }
 if(!cs_calc_sum(pFile, &sum, 1))
 {
  fclose(pFile);
  return 0;
 }
 cs_get_sum(pFile, &res);
 fclose(pFile);

 if(sum != res)
  return 0;
 return 1;
}
