
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int NL ;
 int TAB ;
 int nlines ;
 int pjson (int *,char*,int,int ,char const*,int ,int ) ;

__attribute__((used)) static void
popen_obj_attr (GJSON * json, const char *attr, int sp)
{

  pjson (json, "%.*s\"%s\": {%.*s", sp, TAB, attr, nlines, NL);
}
