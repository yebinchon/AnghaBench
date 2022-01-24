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
struct i2c_client {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cs2000_priv {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cs2000_priv* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device* FUNC3 (struct cs2000_priv*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct cs2000_priv *priv = FUNC1(client);
	struct device *dev = FUNC3(priv);
	struct device_node *np = dev->of_node;

	FUNC2(np);

	FUNC0(&priv->hw);

	return 0;
}