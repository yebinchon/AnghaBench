
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct cpm_bd {int dummy; } ;
struct TYPE_6__ {int tbase; int rbase; int brkcr; int brkln; int brkec; int maxidl; int mrblr; int tfcr; int rfcr; } ;
struct TYPE_5__ {int sc; int len; int * addr; } ;


 int CPM_CMD_INIT_RX_TX ;
 TYPE_1__* cbd_addr ;
 int cbd_offset ;
 int disable_port () ;
 int do_cmd (int ) ;
 int enable_port () ;
 int out_8 (int *,int) ;
 int out_be16 (int *,int) ;
 TYPE_3__* param ;
 TYPE_1__* rbdf ;
 int sync () ;
 TYPE_1__* tbdf ;

__attribute__((used)) static int cpm_serial_open(void)
{
 disable_port();

 out_8(&param->rfcr, 0x10);
 out_8(&param->tfcr, 0x10);
 out_be16(&param->mrblr, 1);
 out_be16(&param->maxidl, 0);
 out_be16(&param->brkec, 0);
 out_be16(&param->brkln, 0);
 out_be16(&param->brkcr, 0);

 rbdf = cbd_addr;
 rbdf->addr = (u8 *)rbdf - 1;
 rbdf->sc = 0xa000;
 rbdf->len = 1;

 tbdf = rbdf + 1;
 tbdf->addr = (u8 *)rbdf - 2;
 tbdf->sc = 0x2000;
 tbdf->len = 1;

 sync();
 out_be16(&param->rbase, cbd_offset);
 out_be16(&param->tbase, cbd_offset + sizeof(struct cpm_bd));

 do_cmd(CPM_CMD_INIT_RX_TX);

 enable_port();
 return 0;
}
