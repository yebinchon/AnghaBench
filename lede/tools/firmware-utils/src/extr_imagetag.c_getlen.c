
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,size_t,int ) ;
 size_t ftell (int *) ;

size_t getlen(FILE *fp)
{
 size_t retval, curpos;

 if (!fp)
  return 0;

 curpos = ftell(fp);
 fseek(fp, 0, SEEK_END);
 retval = ftell(fp);
 fseek(fp, curpos, SEEK_SET);

 return retval;
}
