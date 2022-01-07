
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int halt_poll_ns; } ;


 int halt_poll_ns_grow ;
 int halt_poll_ns_grow_start ;

__attribute__((used)) static void grow_halt_poll_ns(struct kvmppc_vcore *vc)
{
 if (!halt_poll_ns_grow)
  return;

 vc->halt_poll_ns *= halt_poll_ns_grow;
 if (vc->halt_poll_ns < halt_poll_ns_grow_start)
  vc->halt_poll_ns = halt_poll_ns_grow_start;
}
