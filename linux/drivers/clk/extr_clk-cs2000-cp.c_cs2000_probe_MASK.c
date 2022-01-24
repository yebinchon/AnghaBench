#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct cs2000_priv {struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cs2000_priv*) ; 
 int FUNC1 (struct cs2000_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct cs2000_priv*) ; 
 struct cs2000_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct cs2000_priv*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct cs2000_priv *priv;
	struct device *dev = &client->dev;
	int ret;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->client = client;
	FUNC5(client, priv);

	ret = FUNC0(priv);
	if (ret < 0)
		return ret;

	ret = FUNC1(priv);
	if (ret < 0)
		return ret;

	ret = FUNC3(priv);
	if (ret < 0)
		goto probe_err;

	return 0;

probe_err:
	FUNC2(client);

	return ret;
}