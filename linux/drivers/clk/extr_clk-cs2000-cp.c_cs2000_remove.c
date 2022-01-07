
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cs2000_priv {int hw; } ;


 int clk_hw_unregister (int *) ;
 struct cs2000_priv* i2c_get_clientdata (struct i2c_client*) ;
 int of_clk_del_provider (struct device_node*) ;
 struct device* priv_to_dev (struct cs2000_priv*) ;

__attribute__((used)) static int cs2000_remove(struct i2c_client *client)
{
 struct cs2000_priv *priv = i2c_get_clientdata(client);
 struct device *dev = priv_to_dev(priv);
 struct device_node *np = dev->of_node;

 of_clk_del_provider(np);

 clk_hw_unregister(&priv->hw);

 return 0;
}
