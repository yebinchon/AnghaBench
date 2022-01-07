
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int NL ;
 int TAB ;
 int nlines ;
 int pjson (int *,char*,int,int ,char const*,char const*,...) ;

__attribute__((used)) static void
pskeysval (GJSON * json, const char *key, const char *val, int sp, int last)
{
  if (!last)
    pjson (json, "%.*s\"%s\": \"%s\",%.*s", sp, TAB, key, val, nlines, NL);
  else
    pjson (json, "%.*s\"%s\": \"%s\"", sp, TAB, key, val);
}
