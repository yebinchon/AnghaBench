
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_share_buffer () ;
 int init_atm_tc () ;
 int init_ema () ;
 int init_mailbox () ;
 int init_pmu () ;
 int reset_ppe () ;

void ifx_ptm_init_chip(void)
{
    init_pmu();

    reset_ppe();

    init_ema();

    init_mailbox();

    init_atm_tc();

    clear_share_buffer();
}
