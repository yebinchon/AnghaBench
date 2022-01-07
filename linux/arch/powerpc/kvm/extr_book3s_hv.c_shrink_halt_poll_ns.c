
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int halt_poll_ns; } ;


 int halt_poll_ns_shrink ;

__attribute__((used)) static void shrink_halt_poll_ns(struct kvmppc_vcore *vc)
{
 if (halt_poll_ns_shrink == 0)
  vc->halt_poll_ns = 0;
 else
  vc->halt_poll_ns /= halt_poll_ns_shrink;
}
