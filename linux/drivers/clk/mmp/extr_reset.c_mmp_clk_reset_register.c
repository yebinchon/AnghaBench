
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_reset_n_cells; int nr_resets; int of_xlate; struct device_node* of_node; int * ops; } ;
struct mmp_clk_reset_unit {TYPE_1__ rcdev; struct mmp_clk_reset_cell* cells; } ;
struct mmp_clk_reset_cell {int dummy; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 struct mmp_clk_reset_unit* kzalloc (int,int ) ;
 int mmp_clk_reset_ops ;
 int mmp_of_reset_xlate ;
 int reset_controller_register (TYPE_1__*) ;

void mmp_clk_reset_register(struct device_node *np,
   struct mmp_clk_reset_cell *cells, int nr_resets)
{
 struct mmp_clk_reset_unit *unit;

 unit = kzalloc(sizeof(*unit), GFP_KERNEL);
 if (!unit)
  return;

 unit->cells = cells;
 unit->rcdev.of_reset_n_cells = 1;
 unit->rcdev.nr_resets = nr_resets;
 unit->rcdev.ops = &mmp_clk_reset_ops;
 unit->rcdev.of_node = np;
 unit->rcdev.of_xlate = mmp_of_reset_xlate;

 reset_controller_register(&unit->rcdev);
}
