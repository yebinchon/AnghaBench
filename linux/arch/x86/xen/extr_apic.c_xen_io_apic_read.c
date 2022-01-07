
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physdev_apic {unsigned int reg; unsigned int value; int apic_physbase; } ;


 int HYPERVISOR_physdev_op (int ,struct physdev_apic*) ;
 int PHYSDEVOP_apic_read ;
 int mpc_ioapic_addr (unsigned int) ;

__attribute__((used)) static unsigned int xen_io_apic_read(unsigned apic, unsigned reg)
{
 struct physdev_apic apic_op;
 int ret;

 apic_op.apic_physbase = mpc_ioapic_addr(apic);
 apic_op.reg = reg;
 ret = HYPERVISOR_physdev_op(PHYSDEVOP_apic_read, &apic_op);
 if (!ret)
  return apic_op.value;


 if (reg == 0x1)
  return 0x00170020;
 else if (reg == 0x0)
  return apic << 24;

 return 0xfd;
}
