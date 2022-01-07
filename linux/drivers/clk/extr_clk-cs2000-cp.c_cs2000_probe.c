
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct cs2000_priv {struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cs2000_clk_get (struct cs2000_priv*) ;
 int cs2000_clk_register (struct cs2000_priv*) ;
 int cs2000_remove (struct i2c_client*) ;
 int cs2000_version_print (struct cs2000_priv*) ;
 struct cs2000_priv* devm_kzalloc (struct device*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct cs2000_priv*) ;

__attribute__((used)) static int cs2000_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct cs2000_priv *priv;
 struct device *dev = &client->dev;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->client = client;
 i2c_set_clientdata(client, priv);

 ret = cs2000_clk_get(priv);
 if (ret < 0)
  return ret;

 ret = cs2000_clk_register(priv);
 if (ret < 0)
  return ret;

 ret = cs2000_version_print(priv);
 if (ret < 0)
  goto probe_err;

 return 0;

probe_err:
 cs2000_remove(client);

 return ret;
}
