
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XICS_IPI ;
 int force_external_irq_replay () ;
 scalar_t__ opal_int_eoi (int) ;

__attribute__((used)) static void icp_opal_flush_ipi(void)
{
 if (opal_int_eoi((0x00 << 24) | XICS_IPI) > 0)
  force_external_irq_replay();
}
