
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysc {char* name; } ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int sysc_show_name(char *bufp, struct sysc *ddata)
{
 if (!ddata->name)
  return 0;

 return sprintf(bufp, ":%s", ddata->name);
}
