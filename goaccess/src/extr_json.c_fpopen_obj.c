
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int NL ;
 int TAB ;
 int fpjson (int *,char*,int,int ,int ,int ) ;
 int nlines ;

void
fpopen_obj (FILE * fp, int iisp)
{

  fpjson (fp, "%.*s{%.*s", iisp, TAB, nlines, NL);
}
