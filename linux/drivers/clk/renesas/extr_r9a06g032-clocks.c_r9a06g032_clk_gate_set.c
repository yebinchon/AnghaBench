
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r9a06g032_priv {int lock; } ;
struct r9a06g032_gate {scalar_t__ midle; scalar_t__ ready; scalar_t__ reset; scalar_t__ gate; } ;


 int WARN_ON (int) ;
 int clk_rdesc_set (struct r9a06g032_priv*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void
r9a06g032_clk_gate_set(struct r9a06g032_priv *clocks,
         struct r9a06g032_gate *g, int on)
{
 unsigned long flags;

 WARN_ON(!g->gate);

 spin_lock_irqsave(&clocks->lock, flags);
 clk_rdesc_set(clocks, g->gate, on);

 if (g->reset)
  clk_rdesc_set(clocks, g->reset, 1);
 spin_unlock_irqrestore(&clocks->lock, flags);


 udelay(5);





 if (g->ready || g->midle) {
  spin_lock_irqsave(&clocks->lock, flags);
  if (g->ready)
   clk_rdesc_set(clocks, g->ready, on);

  if (g->midle)
   clk_rdesc_set(clocks, g->midle, !on);
  spin_unlock_irqrestore(&clocks->lock, flags);
 }

}
