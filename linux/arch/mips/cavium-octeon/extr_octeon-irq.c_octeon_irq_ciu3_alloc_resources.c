
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct octeon_ciu3_info {scalar_t__ ciu3_addr; } ;


 scalar_t__ CIU3_IDT_CTL (int) ;
 scalar_t__ CIU3_IDT_IO (int) ;
 scalar_t__ CIU3_IDT_PP (int,int ) ;
 scalar_t__ CIU3_ISC_CTL (unsigned int) ;
 scalar_t__ CIU3_ISC_W1C (unsigned int) ;
 int CIU3_MBOX_PER_CORE ;
 int __this_cpu_write (int ,...) ;
 int cvmx_get_local_core_num () ;
 int cvmx_write_csr (scalar_t__,int) ;
 int octeon_ciu3_info ;
 int octeon_irq_ciu3_idt_ip2 ;
 int octeon_irq_ciu3_idt_ip3 ;
 unsigned int octeon_irq_ciu3_mbox_intsn_for_core (int,int) ;

__attribute__((used)) static int octeon_irq_ciu3_alloc_resources(struct octeon_ciu3_info *ciu3_info)
{
 u64 b = ciu3_info->ciu3_addr;
 int idt_ip2, idt_ip3, idt_ip4;
 int unused_idt2;
 int core = cvmx_get_local_core_num();
 int i;

 __this_cpu_write(octeon_ciu3_info, ciu3_info);





 idt_ip2 = core * 4 + 1;
 idt_ip3 = core * 4 + 2;
 idt_ip4 = core * 4 + 3;
 unused_idt2 = core * 4 + 4;
 __this_cpu_write(octeon_irq_ciu3_idt_ip2, idt_ip2);
 __this_cpu_write(octeon_irq_ciu3_idt_ip3, idt_ip3);


 cvmx_write_csr(b + CIU3_IDT_CTL(idt_ip2), 0);
 cvmx_write_csr(b + CIU3_IDT_PP(idt_ip2, 0), 1ull << core);
 cvmx_write_csr(b + CIU3_IDT_IO(idt_ip2), 0);


 cvmx_write_csr(b + CIU3_IDT_CTL(idt_ip3), 1);
 cvmx_write_csr(b + CIU3_IDT_PP(idt_ip3, 0), 1ull << core);
 cvmx_write_csr(b + CIU3_IDT_IO(idt_ip3), 0);


 cvmx_write_csr(b + CIU3_IDT_CTL(idt_ip4), 2);
 cvmx_write_csr(b + CIU3_IDT_PP(idt_ip4, 0), 0);
 cvmx_write_csr(b + CIU3_IDT_IO(idt_ip4), 0);

 cvmx_write_csr(b + CIU3_IDT_CTL(unused_idt2), 0);
 cvmx_write_csr(b + CIU3_IDT_PP(unused_idt2, 0), 0);
 cvmx_write_csr(b + CIU3_IDT_IO(unused_idt2), 0);

 for (i = 0; i < CIU3_MBOX_PER_CORE; i++) {
  unsigned int intsn = octeon_irq_ciu3_mbox_intsn_for_core(core, i);

  cvmx_write_csr(b + CIU3_ISC_W1C(intsn), 2);
  cvmx_write_csr(b + CIU3_ISC_CTL(intsn), 0);
 }

 return 0;
}
