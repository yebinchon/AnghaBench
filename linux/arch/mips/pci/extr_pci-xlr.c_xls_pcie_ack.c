
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct irq_data {int irq; } ;


 int NETLOGIC_IO_PCIE_1_OFFSET ;




 int nlm_mmio_base (int ) ;
 int nlm_write_reg (int ,int,int) ;

__attribute__((used)) static void xls_pcie_ack(struct irq_data *d)
{
 uint64_t pciebase_le = nlm_mmio_base(NETLOGIC_IO_PCIE_1_OFFSET);

 switch (d->irq) {
 case 131:
  nlm_write_reg(pciebase_le, (0x90 >> 2), 0xffffffff);
  break;
 case 130:
  nlm_write_reg(pciebase_le, (0x94 >> 2), 0xffffffff);
  break;
 case 129:
  nlm_write_reg(pciebase_le, (0x190 >> 2), 0xffffffff);
  break;
 case 128:
  nlm_write_reg(pciebase_le, (0x194 >> 2), 0xffffffff);
  break;
 }
}
