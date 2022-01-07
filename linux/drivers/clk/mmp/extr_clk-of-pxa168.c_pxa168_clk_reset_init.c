
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pxa168_clk_unit {scalar_t__ apbc_base; } ;
struct mmp_clk_reset_cell {int bits; int lock; scalar_t__ flags; scalar_t__ reg; int clk_id; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int lock; scalar_t__ offset; int id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GFP_KERNEL ;
 TYPE_1__* apbc_gate_clks ;
 struct mmp_clk_reset_cell* kcalloc (int,int,int ) ;
 int mmp_clk_reset_register (struct device_node*,struct mmp_clk_reset_cell*,int) ;

__attribute__((used)) static void pxa168_clk_reset_init(struct device_node *np,
    struct pxa168_clk_unit *pxa_unit)
{
 struct mmp_clk_reset_cell *cells;
 int i, nr_resets;

 nr_resets = ARRAY_SIZE(apbc_gate_clks);
 cells = kcalloc(nr_resets, sizeof(*cells), GFP_KERNEL);
 if (!cells)
  return;

 for (i = 0; i < nr_resets; i++) {
  cells[i].clk_id = apbc_gate_clks[i].id;
  cells[i].reg = pxa_unit->apbc_base + apbc_gate_clks[i].offset;
  cells[i].flags = 0;
  cells[i].lock = apbc_gate_clks[i].lock;
  cells[i].bits = 0x4;
 }

 mmp_clk_reset_register(np, cells, nr_resets);
}
