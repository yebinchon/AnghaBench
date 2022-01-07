
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p1275_cmd_direct (unsigned long*) ;

__attribute__((used)) static int prom_service_exists(const char *service_name)
{
 unsigned long args[5];

 args[0] = (unsigned long) "test";
 args[1] = 1;
 args[2] = 1;
 args[3] = (unsigned long) service_name;
 args[4] = (unsigned long) -1;

 p1275_cmd_direct(args);

 if (args[4])
  return 0;
 return 1;
}
