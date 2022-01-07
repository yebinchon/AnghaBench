
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef scalar_t__ phandle ;


 int p1275_cmd_direct (unsigned long*) ;
 scalar_t__ prom_nextprop_name ;
 int strcpy (char*,char const*) ;

char *prom_nextprop(phandle node, const char *oprop, char *buffer)
{
 unsigned long args[7];
 char buf[32];

 if ((s32)node == -1) {
  *buffer = 0;
  return buffer;
 }
 if (oprop == buffer) {
  strcpy (buf, oprop);
  oprop = buf;
 }

 args[0] = (unsigned long) prom_nextprop_name;
 args[1] = 3;
 args[2] = 1;
 args[3] = (unsigned int) node;
 args[4] = (unsigned long) oprop;
 args[5] = (unsigned long) buffer;
 args[6] = (unsigned long) -1;

 p1275_cmd_direct(args);

 return buffer;
}
