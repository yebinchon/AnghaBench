
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p1275_cmd_direct (unsigned long*) ;

void prom_feval(const char *fstring)
{
 unsigned long args[5];

 if (!fstring || fstring[0] == 0)
  return;
 args[0] = (unsigned long) "interpret";
 args[1] = 1;
 args[2] = 1;
 args[3] = (unsigned long) fstring;
 args[4] = (unsigned long) -1;

 p1275_cmd_direct(args);
}
