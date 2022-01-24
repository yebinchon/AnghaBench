#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct mtkbtsdio_hdr {int /*<<< orphan*/  bt_type; void* reserved; void* len; } ;
struct btmtksdio_dev {TYPE_2__* hdev; int /*<<< orphan*/  func; } ;
struct TYPE_3__ {int /*<<< orphan*/  byte_tx; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MTK_REG_CTDR ; 
 int /*<<< orphan*/  MTK_SDIO_BLOCK_SIZE ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct btmtksdio_dev *bdev,
			       struct sk_buff *skb)
{
	struct mtkbtsdio_hdr *sdio_hdr;
	int err;

	/* Make sure that there are enough rooms for SDIO header */
	if (FUNC9(FUNC6(skb) < sizeof(*sdio_hdr))) {
		err = FUNC3(skb, sizeof(*sdio_hdr), 0,
				       GFP_ATOMIC);
		if (err < 0)
			return err;
	}

	/* Prepend MediaTek SDIO Specific Header */
	FUNC8(skb, sizeof(*sdio_hdr));

	sdio_hdr = (void *)skb->data;
	sdio_hdr->len = FUNC0(skb->len);
	sdio_hdr->reserved = FUNC0(0);
	sdio_hdr->bt_type = FUNC1(skb);

	err = FUNC5(bdev->func, MTK_REG_CTDR, skb->data,
			   FUNC4(skb->len, MTK_SDIO_BLOCK_SIZE));
	if (err < 0)
		goto err_skb_pull;

	bdev->hdev->stat.byte_tx += skb->len;

	FUNC2(skb);

	return 0;

err_skb_pull:
	FUNC7(skb, sizeof(*sdio_hdr));

	return err;
}