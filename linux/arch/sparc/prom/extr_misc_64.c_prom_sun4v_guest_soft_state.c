
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p1275_cmd_direct (unsigned long*) ;
 int prom_service_exists (char const*) ;

void prom_sun4v_guest_soft_state(void)
{
 const char *svc = "SUNW,soft-state-supported";
 unsigned long args[3];

 if (!prom_service_exists(svc))
  return;
 args[0] = (unsigned long) svc;
 args[1] = 0;
 args[2] = 0;
 p1275_cmd_direct(args);
}
