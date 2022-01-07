
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct irq_data {int irq; } ;


 int OCTEON_IRQ_MSI_BIT0 ;
 unsigned long long cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int * mis_ena_reg ;
 int octeon_irq_msi_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void octeon_irq_msi_enable_pcie(struct irq_data *data)
{
 u64 en;
 unsigned long flags;
 int msi_number = data->irq - OCTEON_IRQ_MSI_BIT0;
 int irq_index = msi_number >> 6;
 int irq_bit = msi_number & 0x3f;

 raw_spin_lock_irqsave(&octeon_irq_msi_lock, flags);
 en = cvmx_read_csr(mis_ena_reg[irq_index]);
 en |= 1ull << irq_bit;
 cvmx_write_csr(mis_ena_reg[irq_index], en);
 cvmx_read_csr(mis_ena_reg[irq_index]);
 raw_spin_unlock_irqrestore(&octeon_irq_msi_lock, flags);
}
