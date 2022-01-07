
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct clk_parent_map {struct clk_core* core; scalar_t__ name; TYPE_1__* hw; } ;
struct clk_core {struct clk_parent_map* parents; } ;
struct TYPE_2__ {struct clk_core* core; } ;


 int ENOENT ;
 int EPROBE_DEFER ;
 struct clk_core* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct clk_core*) ;
 int PTR_ERR (struct clk_core*) ;
 struct clk_core* clk_core_get (struct clk_core*,size_t) ;
 struct clk_core* clk_core_lookup (scalar_t__) ;

__attribute__((used)) static void clk_core_fill_parent_index(struct clk_core *core, u8 index)
{
 struct clk_parent_map *entry = &core->parents[index];
 struct clk_core *parent = ERR_PTR(-ENOENT);

 if (entry->hw) {
  parent = entry->hw->core;





  if (!parent)
   parent = ERR_PTR(-EPROBE_DEFER);
 } else {
  parent = clk_core_get(core, index);
  if (IS_ERR(parent) && PTR_ERR(parent) == -ENOENT && entry->name)
   parent = clk_core_lookup(entry->name);
 }


 if (!IS_ERR(parent))
  entry->core = parent;
}
