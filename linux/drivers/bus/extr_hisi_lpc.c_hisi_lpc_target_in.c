
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc_cycle_para {int opflags; int csize; } ;
struct hisi_lpc_dev {int cycle_lock; scalar_t__ membase; } ;


 int EINVAL ;
 int FG_INCRADDR_LPC ;
 unsigned int LPC_MAX_WAITCNT ;
 unsigned int LPC_PEROP_WAITCNT ;
 scalar_t__ LPC_REG_ADDR ;
 scalar_t__ LPC_REG_CMD ;
 unsigned int LPC_REG_CMD_SAMEADDR ;
 scalar_t__ LPC_REG_OP_LEN ;
 scalar_t__ LPC_REG_RDATA ;
 scalar_t__ LPC_REG_STARTUP_SIGNAL ;
 int LPC_REG_STARTUP_SIGNAL_START ;
 int readsb (scalar_t__,unsigned char*,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_lpc_idle (scalar_t__,unsigned int) ;
 int writel (int ,scalar_t__) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static int hisi_lpc_target_in(struct hisi_lpc_dev *lpcdev,
         struct lpc_cycle_para *para, unsigned long addr,
         unsigned char *buf, unsigned long opcnt)
{
 unsigned int cmd_word;
 unsigned int waitcnt;
 unsigned long flags;
 int ret;

 if (!buf || !opcnt || !para || !para->csize || !lpcdev)
  return -EINVAL;

 cmd_word = 0;
 waitcnt = LPC_PEROP_WAITCNT;
 if (!(para->opflags & FG_INCRADDR_LPC)) {
  cmd_word |= LPC_REG_CMD_SAMEADDR;
  waitcnt = LPC_MAX_WAITCNT;
 }


 spin_lock_irqsave(&lpcdev->cycle_lock, flags);

 writel_relaxed(opcnt, lpcdev->membase + LPC_REG_OP_LEN);
 writel_relaxed(cmd_word, lpcdev->membase + LPC_REG_CMD);
 writel_relaxed(addr, lpcdev->membase + LPC_REG_ADDR);

 writel(LPC_REG_STARTUP_SIGNAL_START,
        lpcdev->membase + LPC_REG_STARTUP_SIGNAL);


 ret = wait_lpc_idle(lpcdev->membase, waitcnt);
 if (ret) {
  spin_unlock_irqrestore(&lpcdev->cycle_lock, flags);
  return ret;
 }

 readsb(lpcdev->membase + LPC_REG_RDATA, buf, opcnt);

 spin_unlock_irqrestore(&lpcdev->cycle_lock, flags);

 return 0;
}
