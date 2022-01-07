
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_cker {int lock; int timpre; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 unsigned long __bestmult (struct clk_hw*,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct timer_cker* to_timer_cker (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int timer_ker_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct timer_cker *tim_ker = to_timer_cker(hw);
 unsigned long flags = 0;
 unsigned long factor = __bestmult(hw, rate, parent_rate);
 int ret = 0;

 spin_lock_irqsave(tim_ker->lock, flags);

 switch (factor) {
 case 1:
  break;
 case 2:
  writel_relaxed(0, tim_ker->timpre);
  break;
 case 4:
  writel_relaxed(1, tim_ker->timpre);
  break;
 default:
  ret = -EINVAL;
 }
 spin_unlock_irqrestore(tim_ker->lock, flags);

 return ret;
}
