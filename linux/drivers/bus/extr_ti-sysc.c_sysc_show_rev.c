
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {scalar_t__* offsets; int revision; } ;


 size_t SYSC_REVISION ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int sysc_show_rev(char *bufp, struct sysc *ddata)
{
 int len;

 if (ddata->offsets[SYSC_REVISION] < 0)
  return sprintf(bufp, ":NA");

 len = sprintf(bufp, ":%08x", ddata->revision);

 return len;
}
