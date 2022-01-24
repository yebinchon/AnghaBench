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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct regmap_ibt_context {int /*<<< orphan*/  hdev; int /*<<< orphan*/  op_write; } ;
struct ibt_cp_reg_access {size_t len; int /*<<< orphan*/  addr; int /*<<< orphan*/  data; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_CMD_TIMEOUT ; 
 int /*<<< orphan*/  IBT_REG_MODE_16BIT ; 
 int /*<<< orphan*/  IBT_REG_MODE_32BIT ; 
 int /*<<< orphan*/  IBT_REG_MODE_8BIT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ibt_cp_reg_access*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ibt_cp_reg_access*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct ibt_cp_reg_access* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static int FUNC10(void *context,
				   const void *addr, size_t reg_size,
				   const void *val, size_t val_size)
{
	struct regmap_ibt_context *ctx = context;
	struct ibt_cp_reg_access *cp;
	struct sk_buff *skb;
	int plen = sizeof(*cp) + val_size;
	u8 mode;
	int err = 0;

	if (reg_size != sizeof(__le32))
		return -EINVAL;

	switch (val_size) {
	case 1:
		mode = IBT_REG_MODE_8BIT;
		break;
	case 2:
		mode = IBT_REG_MODE_16BIT;
		break;
	case 4:
		mode = IBT_REG_MODE_32BIT;
		break;
	default:
		return -EINVAL;
	}

	cp = FUNC7(plen, GFP_KERNEL);
	if (!cp)
		return -ENOMEM;

	/* regmap provides a little-endian formatted addr/value */
	cp->addr = *(__le32 *)addr;
	cp->mode = mode;
	cp->len = val_size;
	FUNC9(&cp->data, val, val_size);

	FUNC2(ctx->hdev, "Register (0x%x) write", FUNC8(cp->addr));

	skb = FUNC4(ctx->hdev, ctx->op_write, plen, cp, HCI_CMD_TIMEOUT);
	if (FUNC0(skb)) {
		err = FUNC1(skb);
		FUNC3(ctx->hdev, "regmap: Register (0x%x) write error (%d)",
			   FUNC8(cp->addr), err);
		goto done;
	}
	FUNC6(skb);

done:
	FUNC5(cp);
	return err;
}