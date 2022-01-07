
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {struct clk_hw* clk_hw; } ;
struct clk_hw {int dummy; } ;


 int ENOENT ;
 struct clk_hw* ERR_PTR (int ) ;
 struct clk_lookup* clk_find (char const*,char const*) ;
 int clocks_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct clk_hw *clk_find_hw(const char *dev_id, const char *con_id)
{
 struct clk_lookup *cl;
 struct clk_hw *hw = ERR_PTR(-ENOENT);

 mutex_lock(&clocks_mutex);
 cl = clk_find(dev_id, con_id);
 if (cl)
  hw = cl->clk_hw;
 mutex_unlock(&clocks_mutex);

 return hw;
}
