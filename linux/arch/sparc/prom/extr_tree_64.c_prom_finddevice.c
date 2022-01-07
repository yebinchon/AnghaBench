
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int p1275_cmd_direct (unsigned long*) ;

phandle prom_finddevice(const char *name)
{
 unsigned long args[5];

 if (!name)
  return 0;
 args[0] = (unsigned long) "finddevice";
 args[1] = 1;
 args[2] = 1;
 args[3] = (unsigned long) name;
 args[4] = (unsigned long) -1;

 p1275_cmd_direct(args);

 return (int) args[4];
}
