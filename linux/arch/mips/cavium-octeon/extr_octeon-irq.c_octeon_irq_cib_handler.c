
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct octeon_irq_cib_host_data {int max_bits; int raw_reg; int lock; int en_reg; } ;
struct irq_domain {struct octeon_irq_cib_host_data* host_data; } ;
struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_TYPE_EDGE_BOTH ;
 unsigned long long cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,unsigned long long) ;
 int generic_handle_irq_desc (struct irq_desc*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irq_find_mapping (struct irq_domain*,int) ;
 struct irq_desc* irq_to_desc (int) ;
 int irqd_get_trigger_type (struct irq_data*) ;
 int pr_err (char*,int,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t octeon_irq_cib_handler(int my_irq, void *data)
{
 u64 en;
 u64 raw;
 u64 bits;
 int i;
 int irq;
 struct irq_domain *cib_domain = data;
 struct octeon_irq_cib_host_data *host_data = cib_domain->host_data;

 en = cvmx_read_csr(host_data->en_reg);
 raw = cvmx_read_csr(host_data->raw_reg);

 bits = en & raw;

 for (i = 0; i < host_data->max_bits; i++) {
  if ((bits & 1ull << i) == 0)
   continue;
  irq = irq_find_mapping(cib_domain, i);
  if (!irq) {
   unsigned long flags;

   pr_err("ERROR: CIB bit %d@%llx IRQ unhandled, disabling\n",
    i, host_data->raw_reg);
   raw_spin_lock_irqsave(&host_data->lock, flags);
   en = cvmx_read_csr(host_data->en_reg);
   en &= ~(1ull << i);
   cvmx_write_csr(host_data->en_reg, en);
   cvmx_write_csr(host_data->raw_reg, 1ull << i);
   raw_spin_unlock_irqrestore(&host_data->lock, flags);
  } else {
   struct irq_desc *desc = irq_to_desc(irq);
   struct irq_data *irq_data = irq_desc_get_irq_data(desc);

   if (irqd_get_trigger_type(irq_data) &
    IRQ_TYPE_EDGE_BOTH)
    cvmx_write_csr(host_data->raw_reg, 1ull << i);
   generic_handle_irq_desc(desc);
  }
 }

 return IRQ_HANDLED;
}
