
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int promlib_buf ;
typedef scalar_t__ phandle ;


 int prom_getproperty (scalar_t__,char*,char*,int) ;
 scalar_t__ prom_getsibling (scalar_t__) ;
 scalar_t__ strcmp (char const*,char*) ;

phandle prom_searchsiblings(phandle node_start, const char *nodename)
{
 phandle thisnode;
 int error;
 char promlib_buf[128];

 for(thisnode = node_start; thisnode;
     thisnode=prom_getsibling(thisnode)) {
  error = prom_getproperty(thisnode, "name", promlib_buf,
      sizeof(promlib_buf));

  if(error == -1) continue;
  if(strcmp(nodename, promlib_buf)==0) return thisnode;
 }

 return 0;
}
