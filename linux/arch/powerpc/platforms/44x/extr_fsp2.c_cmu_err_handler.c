
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int CMUN_FIR0 ;
 int mfcmu (int ) ;
 int panic (char*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static irqreturn_t cmu_err_handler(int irq, void *data) {
 pr_err("CMU Error\n");
 pr_err("FIR0: 0x%08x\n", mfcmu(CMUN_FIR0));
 panic("CMU Error\n");
}
