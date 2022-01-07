
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fwrite (void const*,size_t,int,int *) ;

__attribute__((used)) static void ferr_write(const void *p, size_t count, FILE *fp, int *err)
{
 if (!count || *err)
  return;
 if (fwrite(p, count, 1, fp) != 1)
  *err = errno;
}
