
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct lpc_cycle_para {int opflags; } ;
struct hisi_lpc_dev {int cycle_lock; scalar_t__ membase; } ;


 int EINVAL ;
 int FG_INCRADDR_LPC ;
 unsigned int LPC_MAX_WAITCNT ;
 unsigned int LPC_PEROP_WAITCNT ;
 scalar_t__ LPC_REG_ADDR ;
 scalar_t__ LPC_REG_CMD ;
 unsigned long LPC_REG_CMD_OP ;
 unsigned long LPC_REG_CMD_SAMEADDR ;
 scalar_t__ LPC_REG_OP_LEN ;
 scalar_t__ LPC_REG_STARTUP_SIGNAL ;
 int LPC_REG_STARTUP_SIGNAL_START ;
 scalar_t__ LPC_REG_WDATA ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_lpc_idle (scalar_t__,unsigned int) ;
 int writel (int ,scalar_t__) ;
 int writel_relaxed (unsigned long,scalar_t__) ;
 int writesb (scalar_t__,unsigned char const*,unsigned long) ;

__attribute__((used)) static int hisi_lpc_target_out(struct hisi_lpc_dev *lpcdev,
          struct lpc_cycle_para *para, unsigned long addr,
          const unsigned char *buf, unsigned long opcnt)
{
 unsigned int waitcnt;
 unsigned long flags;
 u32 cmd_word;
 int ret;

 if (!buf || !opcnt || !para || !lpcdev)
  return -EINVAL;


 cmd_word = LPC_REG_CMD_OP;
 waitcnt = LPC_PEROP_WAITCNT;
 if (!(para->opflags & FG_INCRADDR_LPC)) {
  cmd_word |= LPC_REG_CMD_SAMEADDR;
  waitcnt = LPC_MAX_WAITCNT;
 }

 spin_lock_irqsave(&lpcdev->cycle_lock, flags);

 writel_relaxed(opcnt, lpcdev->membase + LPC_REG_OP_LEN);
 writel_relaxed(cmd_word, lpcdev->membase + LPC_REG_CMD);
 writel_relaxed(addr, lpcdev->membase + LPC_REG_ADDR);

 writesb(lpcdev->membase + LPC_REG_WDATA, buf, opcnt);

 writel(LPC_REG_STARTUP_SIGNAL_START,
        lpcdev->membase + LPC_REG_STARTUP_SIGNAL);


 ret = wait_lpc_idle(lpcdev->membase, waitcnt);

 spin_unlock_irqrestore(&lpcdev->cycle_lock, flags);

 return ret;
}
