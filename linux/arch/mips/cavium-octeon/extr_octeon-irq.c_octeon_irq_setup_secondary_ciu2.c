
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUSF_IP2 ;
 int STATUSF_IP3 ;
 int STATUSF_IP4 ;
 int clear_c0_status (int) ;
 int octeon_irq_init_ciu2_percpu () ;
 int octeon_irq_percpu_enable () ;
 scalar_t__ octeon_irq_use_ip4 ;
 int set_c0_status (int) ;

__attribute__((used)) static void octeon_irq_setup_secondary_ciu2(void)
{
 octeon_irq_init_ciu2_percpu();
 octeon_irq_percpu_enable();


 set_c0_status(STATUSF_IP3 | STATUSF_IP2);
 if (octeon_irq_use_ip4)
  set_c0_status(STATUSF_IP4);
 else
  clear_c0_status(STATUSF_IP4);
}
