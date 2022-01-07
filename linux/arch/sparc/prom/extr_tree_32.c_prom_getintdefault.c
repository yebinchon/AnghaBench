
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int prom_getint (int ,char*) ;

int prom_getintdefault(phandle node, char *property, int deflt)
{
 int retval;

 retval = prom_getint(node, property);
 if(retval == -1) return deflt;

 return retval;
}
