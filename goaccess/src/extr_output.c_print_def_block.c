
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GDefMetric ;
typedef int FILE ;


 int fpclose_obj (int *,int,int) ;
 int fpopen_obj (int *,int) ;
 int print_def_metric (int *,int const,int) ;

__attribute__((used)) static void
print_def_block (FILE * fp, const GDefMetric def, int sp, int last)
{
  fpopen_obj (fp, sp);
  print_def_metric (fp, def, sp);
  fpclose_obj (fp, sp, last);
}
