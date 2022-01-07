
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int NL ;
 int TAB ;
 int fpjson (int *,char*,int,int ,char const*,char const*,...) ;
 int nlines ;

void
fpskeyaval (FILE * fp, const char *key, const char *val, int sp, int last)
{
  if (!last)
    fpjson (fp, "%.*s\"%s\": %s,%.*s", sp, TAB, key, val, nlines, NL);
  else
    fpjson (fp, "%.*s\"%s\": %s", sp, TAB, key, val);
}
