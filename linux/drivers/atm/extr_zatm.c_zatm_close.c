
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int flags; int * dev_data; } ;


 int ATM_VF_ADDR ;
 int ATM_VF_READY ;
 int DPRINTK (char*) ;
 int EVENT (char*,int ,int ) ;
 int ZATM_VCC (struct atm_vcc*) ;
 int clear_bit (int ,int *) ;
 int close_rx (struct atm_vcc*) ;
 int close_tx (struct atm_vcc*) ;
 int kfree (int ) ;

__attribute__((used)) static void zatm_close(struct atm_vcc *vcc)
{
        DPRINTK(">zatm_close\n");
        if (!ZATM_VCC(vcc)) return;
 clear_bit(ATM_VF_READY,&vcc->flags);
        close_rx(vcc);
 EVENT("close_tx\n",0,0);
        close_tx(vcc);
        DPRINTK("zatm_close: done waiting\n");

        kfree(ZATM_VCC(vcc));
 vcc->dev_data = ((void*)0);
 clear_bit(ATM_VF_ADDR,&vcc->flags);
}
