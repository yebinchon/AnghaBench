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
struct sk_buff {int len; scalar_t__ data; } ;
struct regmap_ibt_context {int /*<<< orphan*/  hdev; int /*<<< orphan*/  op_read; } ;
struct ibt_rp_reg_access {scalar_t__ addr; int /*<<< orphan*/  data; } ;
struct ibt_cp_reg_access {scalar_t__ addr; size_t len; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HCI_CMD_TIMEOUT ; 
 int /*<<< orphan*/  IBT_REG_MODE_16BIT ; 
 int /*<<< orphan*/  IBT_REG_MODE_32BIT ; 
 int /*<<< orphan*/  IBT_REG_MODE_8BIT ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ibt_cp_reg_access*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC8(void *context, const void *addr, size_t reg_size,
			   void *val, size_t val_size)
{
	struct regmap_ibt_context *ctx = context;
	struct ibt_cp_reg_access cp;
	struct ibt_rp_reg_access *rp;
	struct sk_buff *skb;
	int err = 0;

	if (reg_size != sizeof(__le32))
		return -EINVAL;

	switch (val_size) {
	case 1:
		cp.mode = IBT_REG_MODE_8BIT;
		break;
	case 2:
		cp.mode = IBT_REG_MODE_16BIT;
		break;
	case 4:
		cp.mode = IBT_REG_MODE_32BIT;
		break;
	default:
		return -EINVAL;
	}

	/* regmap provides a little-endian formatted addr */
	cp.addr = *(__le32 *)addr;
	cp.len = val_size;

	FUNC2(ctx->hdev, "Register (0x%x) read", FUNC6(cp.addr));

	skb = FUNC4(ctx->hdev, ctx->op_read, sizeof(cp), &cp,
			   HCI_CMD_TIMEOUT);
	if (FUNC0(skb)) {
		err = FUNC1(skb);
		FUNC3(ctx->hdev, "regmap: Register (0x%x) read error (%d)",
			   FUNC6(cp.addr), err);
		return err;
	}

	if (skb->len != sizeof(*rp) + val_size) {
		FUNC3(ctx->hdev, "regmap: Register (0x%x) read error, bad len",
			   FUNC6(cp.addr));
		err = -EINVAL;
		goto done;
	}

	rp = (struct ibt_rp_reg_access *)skb->data;

	if (rp->addr != cp.addr) {
		FUNC3(ctx->hdev, "regmap: Register (0x%x) read error, bad addr",
			   FUNC6(rp->addr));
		err = -EINVAL;
		goto done;
	}

	FUNC7(val, rp->data, val_size);

done:
	FUNC5(skb);
	return err;
}