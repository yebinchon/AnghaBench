
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUSF_IP4 ;
 int set_c0_status (int ) ;

__attribute__((used)) static void octeon_irq_local_enable_ip4(void *arg)
{
 set_c0_status(STATUSF_IP4);
}
