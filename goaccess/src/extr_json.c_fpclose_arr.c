
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int NL ;
 int TAB ;
 int fpjson (int *,char*,int ,int ,int,int ,...) ;
 int nlines ;

void
fpclose_arr (FILE * fp, int sp, int last)
{
  if (!last)
    fpjson (fp, "%.*s%.*s],%.*s", nlines, NL, sp, TAB, nlines, NL);
  else
    fpjson (fp, "%.*s%.*s]", nlines, NL, sp, TAB);
}
