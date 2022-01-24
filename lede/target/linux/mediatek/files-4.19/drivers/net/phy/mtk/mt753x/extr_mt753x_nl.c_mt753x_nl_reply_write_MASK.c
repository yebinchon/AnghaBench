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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct gsw_mt753x {int /*<<< orphan*/  (* mmd_write ) (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;int /*<<< orphan*/  (* mii_write ) (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__) ;} ;
struct genl_info {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  MT753X_ATTR_TYPE_DEVAD ; 
 int /*<<< orphan*/  MT753X_ATTR_TYPE_PHY ; 
 int /*<<< orphan*/  MT753X_ATTR_TYPE_REG ; 
 int /*<<< orphan*/  MT753X_ATTR_TYPE_VAL ; 
 int /*<<< orphan*/  MT753X_CMD_WRITE ; 
 scalar_t__ FUNC0 (struct genl_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct genl_info*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (struct genl_info*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct gsw_mt753x*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct gsw_mt753x*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct genl_info *info, struct gsw_mt753x *gsw)
{
	struct sk_buff *rep_skb = NULL;
	s32 phy, devad, reg;
	u32 value;
	int ret = 0;

	phy = FUNC0(info, MT753X_ATTR_TYPE_PHY, -1);
	devad = FUNC0(info, MT753X_ATTR_TYPE_DEVAD, -1);
	reg = FUNC0(info, MT753X_ATTR_TYPE_REG, -1);

	if (FUNC1(info, MT753X_ATTR_TYPE_VAL, &value))
		goto err;

	if (reg < 0)
		goto err;

	ret = FUNC2(info, MT753X_CMD_WRITE, &rep_skb);
	if (ret < 0)
		goto err;

	if (phy >= 0) {
		if (devad < 0)
			gsw->mii_write(gsw, phy, reg, value);
		else
			gsw->mmd_write(gsw, phy, devad, reg, value);
	} else {
		FUNC4(gsw, reg, value);
	}

	ret = FUNC5(rep_skb, MT753X_ATTR_TYPE_REG, reg);
	if (ret < 0)
		goto err;

	ret = FUNC5(rep_skb, MT753X_ATTR_TYPE_VAL, value);
	if (ret < 0)
		goto err;

	return FUNC3(rep_skb, info);

err:
	if (rep_skb)
		FUNC6(rep_skb);

	return ret;
}