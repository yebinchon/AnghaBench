
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;
union cvmx_ciu3_iscx_w1c {scalar_t__ u64; TYPE_1__ s; } ;
typedef scalar_t__ u64 ;
struct octeon_ciu3_info {scalar_t__ ciu3_addr; } ;
struct irq_data {unsigned int irq; } ;


 scalar_t__ CIU3_ISC_W1C (unsigned int) ;
 unsigned int OCTEON_IRQ_MBOX0 ;
 struct octeon_ciu3_info* __this_cpu_read (int ) ;
 int cvmx_get_local_core_num () ;
 int cvmx_read_csr (scalar_t__) ;
 int cvmx_write_csr (scalar_t__,scalar_t__) ;
 int octeon_ciu3_info ;
 unsigned int octeon_irq_ciu3_mbox_intsn_for_core (int ,unsigned int) ;

__attribute__((used)) static void octeon_irq_ciu3_mbox_ack(struct irq_data *data)
{
 struct octeon_ciu3_info *ciu3_info;
 unsigned int intsn;
 u64 isc_w1c_addr;
 union cvmx_ciu3_iscx_w1c isc_w1c;
 unsigned int mbox = data->irq - OCTEON_IRQ_MBOX0;

 intsn = octeon_irq_ciu3_mbox_intsn_for_core(cvmx_get_local_core_num(), mbox);

 isc_w1c.u64 = 0;
 isc_w1c.s.raw = 1;

 ciu3_info = __this_cpu_read(octeon_ciu3_info);
 isc_w1c_addr = ciu3_info->ciu3_addr + CIU3_ISC_W1C(intsn);
 cvmx_write_csr(isc_w1c_addr, isc_w1c.u64);
 cvmx_read_csr(isc_w1c_addr);
}
