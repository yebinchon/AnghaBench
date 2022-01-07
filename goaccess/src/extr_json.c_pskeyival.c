
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int NL ;
 int TAB ;
 int nlines ;
 int pjson (int *,char*,int,int ,char const*,int,...) ;

__attribute__((used)) static void
pskeyival (GJSON * json, const char *key, int val, int sp, int last)
{
  if (!last)
    pjson (json, "%.*s\"%s\": %d,%.*s", sp, TAB, key, val, nlines, NL);
  else
    pjson (json, "%.*s\"%s\": %d", sp, TAB, key, val);
}
