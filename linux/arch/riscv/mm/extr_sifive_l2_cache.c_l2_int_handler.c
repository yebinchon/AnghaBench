
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 size_t DATA_CORR ;
 size_t DATA_UNCORR ;
 size_t DIR_CORR ;
 int IRQ_HANDLED ;
 scalar_t__ SIFIVE_L2_DATECCFAIL_COUNT ;
 scalar_t__ SIFIVE_L2_DATECCFAIL_HIGH ;
 scalar_t__ SIFIVE_L2_DATECCFAIL_LOW ;
 scalar_t__ SIFIVE_L2_DATECCFIX_COUNT ;
 scalar_t__ SIFIVE_L2_DATECCFIX_HIGH ;
 scalar_t__ SIFIVE_L2_DATECCFIX_LOW ;
 scalar_t__ SIFIVE_L2_DIRECCFIX_COUNT ;
 scalar_t__ SIFIVE_L2_DIRECCFIX_HIGH ;
 scalar_t__ SIFIVE_L2_DIRECCFIX_LOW ;
 int SIFIVE_L2_ERR_TYPE_CE ;
 int SIFIVE_L2_ERR_TYPE_UE ;
 int atomic_notifier_call_chain (int *,int ,char*) ;
 int* g_irq ;
 scalar_t__ l2_base ;
 int l2_err_chain ;
 int pr_err (char*,unsigned int,unsigned int) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t l2_int_handler(int irq, void *device)
{
 unsigned int add_h, add_l;

 if (irq == g_irq[DIR_CORR]) {
  add_h = readl(l2_base + SIFIVE_L2_DIRECCFIX_HIGH);
  add_l = readl(l2_base + SIFIVE_L2_DIRECCFIX_LOW);
  pr_err("L2CACHE: DirError @ 0x%08X.%08X\n", add_h, add_l);

  readl(l2_base + SIFIVE_L2_DIRECCFIX_COUNT);
  atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
        "DirECCFix");
 }
 if (irq == g_irq[DATA_CORR]) {
  add_h = readl(l2_base + SIFIVE_L2_DATECCFIX_HIGH);
  add_l = readl(l2_base + SIFIVE_L2_DATECCFIX_LOW);
  pr_err("L2CACHE: DataError @ 0x%08X.%08X\n", add_h, add_l);

  readl(l2_base + SIFIVE_L2_DATECCFIX_COUNT);
  atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_CE,
        "DatECCFix");
 }
 if (irq == g_irq[DATA_UNCORR]) {
  add_h = readl(l2_base + SIFIVE_L2_DATECCFAIL_HIGH);
  add_l = readl(l2_base + SIFIVE_L2_DATECCFAIL_LOW);
  pr_err("L2CACHE: DataFail @ 0x%08X.%08X\n", add_h, add_l);

  readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
  atomic_notifier_call_chain(&l2_err_chain, SIFIVE_L2_ERR_TYPE_UE,
        "DatECCFail");
 }

 return IRQ_HANDLED;
}
