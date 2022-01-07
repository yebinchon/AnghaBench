
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct irq_data {int dummy; } ;


 int NETLOGIC_IO_PCIX_OFFSET ;
 int nlm_mmio_base (int ) ;
 int nlm_read_reg (int ,int) ;

__attribute__((used)) static void xlr_pci_ack(struct irq_data *d)
{
 uint64_t pcibase = nlm_mmio_base(NETLOGIC_IO_PCIX_OFFSET);

 nlm_read_reg(pcibase, (0x140 >> 2));
}
