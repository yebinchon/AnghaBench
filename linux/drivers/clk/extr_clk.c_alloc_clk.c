
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dummy; } ;
struct clk {char const* dev_id; int max_rate; int con_id; struct clk_core* core; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int ULONG_MAX ;
 int kstrdup_const (char const*,int ) ;
 struct clk* kzalloc (int,int ) ;

__attribute__((used)) static struct clk *alloc_clk(struct clk_core *core, const char *dev_id,
        const char *con_id)
{
 struct clk *clk;

 clk = kzalloc(sizeof(*clk), GFP_KERNEL);
 if (!clk)
  return ERR_PTR(-ENOMEM);

 clk->core = core;
 clk->dev_id = dev_id;
 clk->con_id = kstrdup_const(con_id, GFP_KERNEL);
 clk->max_rate = ULONG_MAX;

 return clk;
}
