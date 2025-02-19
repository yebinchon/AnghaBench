
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU1100_GPIO15_INT ;
 int AU1100_GPIO20_INT ;
 int BCSR_WHOAMI ;
 scalar_t__ BCSR_WHOAMI_BOARD (int ) ;
 scalar_t__ BCSR_WHOAMI_DB1100 ;
 int IRQ_TYPE_EDGE_BOTH ;
 int bcsr_read (int ) ;
 int db1100_mmc_cd ;
 int free_irq (int,void*) ;
 int irq_set_irq_type (int,int ) ;
 int request_irq (int,int ,int ,char*,void*) ;

__attribute__((used)) static int db1100_mmc1_cd_setup(void *mmc_host, int en)
{
 int ret = 0, irq;

 if (BCSR_WHOAMI_BOARD(bcsr_read(BCSR_WHOAMI)) == BCSR_WHOAMI_DB1100)
  irq = AU1100_GPIO20_INT;
 else
  irq = AU1100_GPIO15_INT;

 if (en) {
  irq_set_irq_type(irq, IRQ_TYPE_EDGE_BOTH);
  ret = request_irq(irq, db1100_mmc_cd, 0,
      "sd1_cd", mmc_host);
 } else
  free_irq(irq, mmc_host);
 return ret;
}
