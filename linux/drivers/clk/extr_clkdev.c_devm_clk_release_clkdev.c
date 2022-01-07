
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_lookup {int dummy; } ;


 int WARN_ON (int) ;
 struct clk_lookup* clk_find (char const*,char const*) ;
 int clocks_mutex ;
 int devm_clk_match_clkdev ;
 int devm_clkdev_release ;
 int devres_release (struct device*,int ,int ,struct clk_lookup*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void devm_clk_release_clkdev(struct device *dev, const char *con_id,
        const char *dev_id)
{
 struct clk_lookup *cl;
 int rval;

 mutex_lock(&clocks_mutex);
 cl = clk_find(dev_id, con_id);
 mutex_unlock(&clocks_mutex);

 WARN_ON(!cl);
 rval = devres_release(dev, devm_clkdev_release,
         devm_clk_match_clkdev, cl);
 WARN_ON(rval);
}
