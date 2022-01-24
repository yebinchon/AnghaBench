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
struct cs2000_priv {int dummy; } ;

/* Variables and functions */
 int AUTORMOD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  DEVICE_CFG1 ; 
 int /*<<< orphan*/  DEVICE_CFG2 ; 
 int EINVAL ; 
 int FRACNSRC_MASK ; 
 int FRACNSRC_STATIC ; 
 int FUNC1 (int) ; 
 int LOCKCLK_MASK ; 
 int FUNC2 (int) ; 
 int RSEL_MASK ; 
 int FUNC3 (struct cs2000_priv*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct cs2000_priv *priv, int ch)
{
	int ret;

	if (FUNC0(ch))
		return -EINVAL;

	/*
	 * FIXME
	 *
	 * this driver supports static ratio mode only at this point.
	 */
	ret = FUNC3(priv, DEVICE_CFG1, RSEL_MASK, FUNC2(ch));
	if (ret < 0)
		return ret;

	ret = FUNC3(priv, DEVICE_CFG2,
			  (AUTORMOD | LOCKCLK_MASK | FRACNSRC_MASK),
			  (FUNC1(ch) | FRACNSRC_STATIC));
	if (ret < 0)
		return ret;

	return 0;
}