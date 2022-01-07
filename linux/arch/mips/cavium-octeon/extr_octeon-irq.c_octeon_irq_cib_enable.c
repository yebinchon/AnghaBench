
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct octeon_irq_cib_host_data {int lock; int en_reg; } ;
struct octeon_irq_cib_chip_data {unsigned long long bit; struct octeon_irq_cib_host_data* host_data; } ;
struct irq_data {int dummy; } ;


 unsigned long long cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 struct octeon_irq_cib_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void octeon_irq_cib_enable(struct irq_data *data)
{
 unsigned long flags;
 u64 en;
 struct octeon_irq_cib_chip_data *cd = irq_data_get_irq_chip_data(data);
 struct octeon_irq_cib_host_data *host_data = cd->host_data;

 raw_spin_lock_irqsave(&host_data->lock, flags);
 en = cvmx_read_csr(host_data->en_reg);
 en |= 1ull << cd->bit;
 cvmx_write_csr(host_data->en_reg, en);
 raw_spin_unlock_irqrestore(&host_data->lock, flags);
}
