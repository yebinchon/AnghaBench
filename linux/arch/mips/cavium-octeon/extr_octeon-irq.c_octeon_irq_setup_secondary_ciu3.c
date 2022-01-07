
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_ciu3_info {int dummy; } ;


 int STATUSF_IP2 ;
 int STATUSF_IP3 ;
 int STATUSF_IP4 ;
 int clear_c0_status (int) ;
 size_t cvmx_get_node_num () ;
 int irq_cpu_online () ;
 struct octeon_ciu3_info** octeon_ciu3_info_per_node ;
 int octeon_irq_ciu3_alloc_resources (struct octeon_ciu3_info*) ;
 scalar_t__ octeon_irq_use_ip4 ;
 int set_c0_status (int) ;

__attribute__((used)) static void octeon_irq_setup_secondary_ciu3(void)
{
 struct octeon_ciu3_info *ciu3_info;

 ciu3_info = octeon_ciu3_info_per_node[cvmx_get_node_num()];
 octeon_irq_ciu3_alloc_resources(ciu3_info);
 irq_cpu_online();


 set_c0_status(STATUSF_IP3 | STATUSF_IP2);
 if (octeon_irq_use_ip4)
  set_c0_status(STATUSF_IP4);
 else
  clear_c0_status(STATUSF_IP4);
}
