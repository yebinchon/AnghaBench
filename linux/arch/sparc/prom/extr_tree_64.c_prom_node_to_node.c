
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle ;


 int p1275_cmd_direct (unsigned long*) ;

__attribute__((used)) static phandle prom_node_to_node(const char *type, phandle node)
{
 unsigned long args[5];

 args[0] = (unsigned long) type;
 args[1] = 1;
 args[2] = 1;
 args[3] = (unsigned int) node;
 args[4] = (unsigned long) -1;

 p1275_cmd_direct(args);

 return (phandle) args[4];
}
