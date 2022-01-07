
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int prom_nextprop (int ,char*,char*) ;
 int strcmp (char*,char const*) ;

int prom_node_has_property(phandle node, const char *prop)
{
 char buf [32];

 *buf = 0;
 do {
  prom_nextprop(node, buf, buf);
  if (!strcmp(buf, prop))
   return 1;
 } while (*buf);
 return 0;
}
