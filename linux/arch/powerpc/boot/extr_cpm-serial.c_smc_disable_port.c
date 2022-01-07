
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smcmr; } ;


 int CPM_CMD_STOP_TX ;
 int do_cmd (int ) ;
 int in_be16 (int *) ;
 int out_be16 (int *,int) ;
 TYPE_1__* smc ;

__attribute__((used)) static void smc_disable_port(void)
{
 do_cmd(CPM_CMD_STOP_TX);
 out_be16(&smc->smcmr, in_be16(&smc->smcmr) & ~3);
}
