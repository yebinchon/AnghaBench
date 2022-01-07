
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int DCRN_CONF_FIR_RWC ;
 int DCRN_CONF_RPERR0 ;
 int DCRN_CONF_RPERR1 ;
 int mfdcr (int ) ;
 int panic (char*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static irqreturn_t conf_err_handler(int irq, void *data) {
 pr_err("Configuration Logic Error\n");
 pr_err("CONF_FIR: 0x%08x\n", mfdcr(DCRN_CONF_FIR_RWC));
 pr_err("RPERR0:   0x%08x\n", mfdcr(DCRN_CONF_RPERR0));
 pr_err("RPERR1:   0x%08x\n", mfdcr(DCRN_CONF_RPERR1));
 panic("Configuration Logic Error\n");
}
