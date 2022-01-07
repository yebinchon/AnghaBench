
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int NL ;
 int TAB ;
 int fpjson (int *,char*,int,int ,char const*,int ,int ) ;
 int nlines ;

void
fpopen_arr_attr (FILE * fp, const char *attr, int sp)
{

  fpjson (fp, "%.*s\"%s\": [%.*s", sp, TAB, attr, nlines, NL);
}
