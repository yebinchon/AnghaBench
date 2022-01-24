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
struct device {int dummy; } ;
struct cs2000_priv {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_CTRL ; 
 int ETIMEDOUT ; 
 int PLL_UNLOCK ; 
 int FUNC0 (struct cs2000_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct cs2000_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cs2000_priv *priv)
{
	struct device *dev = FUNC2(priv);
	s32 val;
	unsigned int i;

	for (i = 0; i < 256; i++) {
		val = FUNC0(priv, DEVICE_CTRL);
		if (val < 0)
			return val;
		if (!(val & PLL_UNLOCK))
			return 0;
		FUNC3(1);
	}

	FUNC1(dev, "pll lock failed\n");

	return -ETIMEDOUT;
}