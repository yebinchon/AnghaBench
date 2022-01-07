
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int OCTEON_IRQ_MSI_BIT0 ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int do_IRQ (int) ;
 int fls64 (int ) ;
 int * msi_rcv_reg ;

__attribute__((used)) static irqreturn_t __octeon_msi_do_interrupt(int index, u64 msi_bits)
{
 int irq;
 int bit;

 bit = fls64(msi_bits);
 if (bit) {
  bit--;

  cvmx_write_csr(msi_rcv_reg[index], 1ull << bit);

  irq = bit + OCTEON_IRQ_MSI_BIT0 + 64 * index;
  do_IRQ(irq);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
