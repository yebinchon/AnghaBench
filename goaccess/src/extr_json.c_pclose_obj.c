
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int NL ;
 int TAB ;
 int nlines ;
 int pjson (int *,char*,int ,int ,int,int ,...) ;

__attribute__((used)) static void
pclose_obj (GJSON * json, int iisp, int last)
{
  if (!last)
    pjson (json, "%.*s%.*s},%.*s", nlines, NL, iisp, TAB, nlines, NL);
  else
    pjson (json, "%.*s%.*s}", nlines, NL, iisp, TAB);
}
