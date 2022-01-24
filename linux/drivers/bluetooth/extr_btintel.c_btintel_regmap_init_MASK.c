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
typedef  void* u16 ;
struct regmap_ibt_context {struct hci_dev* hdev; void* op_write; void* op_read; } ;
struct regmap {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,char*,void*,void*) ; 
 struct regmap_ibt_context* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  regmap_ibt ; 
 int /*<<< orphan*/  regmap_ibt_cfg ; 
 struct regmap* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct regmap_ibt_context*,int /*<<< orphan*/ *) ; 

struct regmap *FUNC4(struct hci_dev *hdev, u16 opcode_read,
				   u16 opcode_write)
{
	struct regmap_ibt_context *ctx;

	FUNC1(hdev, "regmap: Init R%x-W%x region", opcode_read,
		    opcode_write);

	ctx = FUNC2(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return FUNC0(-ENOMEM);

	ctx->op_read = opcode_read;
	ctx->op_write = opcode_write;
	ctx->hdev = hdev;

	return FUNC3(&hdev->dev, &regmap_ibt, ctx, &regmap_ibt_cfg);
}