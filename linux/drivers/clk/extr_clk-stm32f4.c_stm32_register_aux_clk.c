
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct clk_ops {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk_mux {struct clk_hw hw; scalar_t__ flags; void* mask; void* shift; void* reg; int * lock; void* bit_idx; } ;
struct clk_gate {struct clk_hw hw; scalar_t__ flags; void* mask; void* shift; void* reg; int * lock; void* bit_idx; } ;
typedef int spinlock_t ;


 int EINVAL ;
 struct clk_hw* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk_hw*) ;
 int NO_GATE ;
 int NO_MUX ;
 void* base ;
 struct clk_ops clk_gate_ops ;
 struct clk_hw* clk_hw_register_composite (int *,char const*,char const* const*,int,struct clk_hw*,struct clk_ops const*,int *,int *,struct clk_hw*,struct clk_ops const*,unsigned long) ;
 struct clk_ops clk_mux_ops ;
 int kfree (struct clk_mux*) ;
 struct clk_mux* kzalloc (int,int ) ;

__attribute__((used)) static struct clk_hw *stm32_register_aux_clk(const char *name,
  const char * const *parent_names, int num_parents,
  int offset_mux, u8 shift, u8 mask,
  int offset_gate, u8 bit_idx,
  unsigned long flags, spinlock_t *lock)
{
 struct clk_hw *hw;
 struct clk_gate *gate = ((void*)0);
 struct clk_mux *mux = ((void*)0);
 struct clk_hw *mux_hw = ((void*)0), *gate_hw = ((void*)0);
 const struct clk_ops *mux_ops = ((void*)0), *gate_ops = ((void*)0);

 if (offset_gate != NO_GATE) {
  gate = kzalloc(sizeof(*gate), GFP_KERNEL);
  if (!gate) {
   hw = ERR_PTR(-EINVAL);
   goto fail;
  }

  gate->reg = base + offset_gate;
  gate->bit_idx = bit_idx;
  gate->flags = 0;
  gate->lock = lock;
  gate_hw = &gate->hw;
  gate_ops = &clk_gate_ops;
 }

 if (offset_mux != NO_MUX) {
  mux = kzalloc(sizeof(*mux), GFP_KERNEL);
  if (!mux) {
   hw = ERR_PTR(-EINVAL);
   goto fail;
  }

  mux->reg = base + offset_mux;
  mux->shift = shift;
  mux->mask = mask;
  mux->flags = 0;
  mux_hw = &mux->hw;
  mux_ops = &clk_mux_ops;
 }

 if (mux_hw == ((void*)0) && gate_hw == ((void*)0)) {
  hw = ERR_PTR(-EINVAL);
  goto fail;
 }

 hw = clk_hw_register_composite(((void*)0), name, parent_names, num_parents,
   mux_hw, mux_ops,
   ((void*)0), ((void*)0),
   gate_hw, gate_ops,
   flags);

fail:
 if (IS_ERR(hw)) {
  kfree(gate);
  kfree(mux);
 }

 return hw;
}
