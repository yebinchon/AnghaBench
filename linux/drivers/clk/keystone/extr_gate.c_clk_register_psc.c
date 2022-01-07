
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct clk_psc_data {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_psc {TYPE_1__ hw; int * lock; struct clk_psc_data* psc_data; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; scalar_t__ flags; int * ops; } ;
struct clk {int dummy; } ;
typedef int spinlock_t ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int clk_psc_ops ;
 struct clk* clk_register (int *,TYPE_1__*) ;
 int kfree (struct clk_psc*) ;
 struct clk_psc* kzalloc (int,int ) ;

__attribute__((used)) static struct clk *clk_register_psc(struct device *dev,
   const char *name,
   const char *parent_name,
   struct clk_psc_data *psc_data,
   spinlock_t *lock)
{
 struct clk_init_data init;
 struct clk_psc *psc;
 struct clk *clk;

 psc = kzalloc(sizeof(*psc), GFP_KERNEL);
 if (!psc)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &clk_psc_ops;
 init.flags = 0;
 init.parent_names = (parent_name ? &parent_name : ((void*)0));
 init.num_parents = (parent_name ? 1 : 0);

 psc->psc_data = psc_data;
 psc->lock = lock;
 psc->hw.init = &init;

 clk = clk_register(((void*)0), &psc->hw);
 if (IS_ERR(clk))
  kfree(psc);

 return clk;
}
