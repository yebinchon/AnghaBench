
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int NL ;
 int TAB ;
 int nlines ;
 int pjson (int *,char*,int,int ,char const*,float,...) ;

__attribute__((used)) static void
pskeyfval (GJSON * json, const char *key, float val, int sp, int last)
{
  if (!last)
    pjson (json, "%.*s\"%s\": \"%4.2f\",%.*s", sp, TAB, key, val, nlines, NL);
  else
    pjson (json, "%.*s\"%s\": \"%4.2f\"", sp, TAB, key, val);
}
