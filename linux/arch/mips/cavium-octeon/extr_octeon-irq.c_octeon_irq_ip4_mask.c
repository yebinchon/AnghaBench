
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUSF_IP4 ;
 int clear_c0_status (int ) ;
 int spurious_interrupt () ;

__attribute__((used)) static void octeon_irq_ip4_mask(void)
{
 clear_c0_status(STATUSF_IP4);
 spurious_interrupt();
}
