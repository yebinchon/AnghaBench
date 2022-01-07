
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_getproperty (int ,char*,char*,int) ;
 int prom_getproplen (int ,char*) ;
 int prom_root_node ;

unsigned char
prom_get_idprom(char *idbuf, int num_bytes)
{
 int len;

 len = prom_getproplen(prom_root_node, "idprom");
 if((len>num_bytes) || (len==-1)) return 0xff;
 if(!prom_getproperty(prom_root_node, "idprom", idbuf, num_bytes))
  return idbuf[0];

 return 0xff;
}
