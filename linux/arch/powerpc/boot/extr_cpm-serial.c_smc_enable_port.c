
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smcmr; } ;


 int CPM_CMD_RESTART_TX ;
 int do_cmd (int ) ;
 int in_be16 (int *) ;
 int out_be16 (int *,int) ;
 TYPE_1__* smc ;

__attribute__((used)) static void smc_enable_port(void)
{
 out_be16(&smc->smcmr, in_be16(&smc->smcmr) | 3);
 do_cmd(CPM_CMD_RESTART_TX);
}
