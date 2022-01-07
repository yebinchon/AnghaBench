
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct timer_list {int dummy; } ;
struct idt77252_dev {unsigned long* tst; size_t tst_index; unsigned long tst_size; int tst_lock; int tst_timer; int tst_state; TYPE_1__* soft_tst; } ;
struct TYPE_2__ {int tste; } ;


 int SAR_REG_NOW ;
 unsigned long TSTE_MASK ;
 unsigned long TSTE_OPC_JMP ;
 unsigned long TSTE_OPC_NULL ;
 int TSTE_PUSH_ACTIVE ;
 int TSTE_PUSH_IDLE ;
 int TST_SWITCH_PENDING ;
 int TST_SWITCH_WAIT ;
 struct idt77252_dev* card ;
 int clear_bit (int ,int *) ;
 struct idt77252_dev* from_timer (int ,struct timer_list*,void (*) (struct timer_list*)) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int readl (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int write_sram (struct idt77252_dev*,unsigned long,unsigned long) ;

__attribute__((used)) static void
tst_timer(struct timer_list *t)
{
 struct idt77252_dev *card = from_timer(card, t, tst_timer);
 unsigned long base, idle, jump;
 unsigned long flags;
 u32 pc;
 int e;

 spin_lock_irqsave(&card->tst_lock, flags);

 base = card->tst[card->tst_index];
 idle = card->tst[card->tst_index ^ 1];

 if (test_bit(TST_SWITCH_WAIT, &card->tst_state)) {
  jump = base + card->tst_size - 2;

  pc = readl(SAR_REG_NOW) >> 2;
  if ((pc ^ idle) & ~(card->tst_size - 1)) {
   mod_timer(&card->tst_timer, jiffies + 1);
   goto out;
  }

  clear_bit(TST_SWITCH_WAIT, &card->tst_state);

  card->tst_index ^= 1;
  write_sram(card, jump, TSTE_OPC_JMP | (base << 2));

  base = card->tst[card->tst_index];
  idle = card->tst[card->tst_index ^ 1];

  for (e = 0; e < card->tst_size - 2; e++) {
   if (card->soft_tst[e].tste & TSTE_PUSH_IDLE) {
    write_sram(card, idle + e,
        card->soft_tst[e].tste & TSTE_MASK);
    card->soft_tst[e].tste &= ~(TSTE_PUSH_IDLE);
   }
  }
 }

 if (test_and_clear_bit(TST_SWITCH_PENDING, &card->tst_state)) {

  for (e = 0; e < card->tst_size - 2; e++) {
   if (card->soft_tst[e].tste & TSTE_PUSH_ACTIVE) {
    write_sram(card, idle + e,
        card->soft_tst[e].tste & TSTE_MASK);
    card->soft_tst[e].tste &= ~(TSTE_PUSH_ACTIVE);
    card->soft_tst[e].tste |= TSTE_PUSH_IDLE;
   }
  }

  jump = base + card->tst_size - 2;

  write_sram(card, jump, TSTE_OPC_NULL);
  set_bit(TST_SWITCH_WAIT, &card->tst_state);

  mod_timer(&card->tst_timer, jiffies + 1);
 }

out:
 spin_unlock_irqrestore(&card->tst_lock, flags);
}
