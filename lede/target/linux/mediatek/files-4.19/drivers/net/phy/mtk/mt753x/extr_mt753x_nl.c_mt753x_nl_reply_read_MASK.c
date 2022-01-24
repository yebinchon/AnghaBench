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
struct sk_buff {int dummy; } ;
struct gsw_mt753x {int (* mii_read ) (struct gsw_mt753x*,scalar_t__,scalar_t__) ;int (* mmd_read ) (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct genl_info {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  MT753X_ATTR_TYPE_DEVAD ; 
 int /*<<< orphan*/  MT753X_ATTR_TYPE_PHY ; 
 int /*<<< orphan*/  MT753X_ATTR_TYPE_REG ; 
 int /*<<< orphan*/  MT753X_ATTR_TYPE_VAL ; 
 int /*<<< orphan*/  MT753X_CMD_READ ; 
 scalar_t__ FUNC0 (struct genl_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct genl_info*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int FUNC3 (struct gsw_mt753x*,scalar_t__) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct gsw_mt753x*,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct genl_info *info, struct gsw_mt753x *gsw)
{
	struct sk_buff *rep_skb = NULL;
	s32 phy, devad, reg;
	int value;
	int ret = 0;

	phy = FUNC0(info, MT753X_ATTR_TYPE_PHY, -1);
	devad = FUNC0(info, MT753X_ATTR_TYPE_DEVAD, -1);
	reg = FUNC0(info, MT753X_ATTR_TYPE_REG, -1);

	if (reg < 0)
		goto err;

	ret = FUNC1(info, MT753X_CMD_READ, &rep_skb);
	if (ret < 0)
		goto err;

	if (phy >= 0) {
		if (devad < 0)
			value = gsw->mii_read(gsw, phy, reg);
		else
			value = gsw->mmd_read(gsw, phy, devad, reg);
	} else {
		value = FUNC3(gsw, reg);
	}

	ret = FUNC4(rep_skb, MT753X_ATTR_TYPE_REG, reg);
	if (ret < 0)
		goto err;

	ret = FUNC4(rep_skb, MT753X_ATTR_TYPE_VAL, value);
	if (ret < 0)
		goto err;

	return FUNC2(rep_skb, info);

err:
	if (rep_skb)
		FUNC5(rep_skb);

	return ret;
}