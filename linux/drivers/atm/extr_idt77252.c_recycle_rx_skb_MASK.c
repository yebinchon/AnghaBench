#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct idt77252_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct idt77252_dev*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct idt77252_dev*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC9(struct idt77252_dev *card, struct sk_buff *skb)
{
	u32 handle = FUNC1(skb);
	int err;

	FUNC4(&card->pcidev->dev, FUNC0(skb),
				   FUNC8(skb) - skb->data,
				   DMA_FROM_DEVICE);

	err = FUNC6(card, skb, FUNC2(handle));
	if (err) {
		FUNC5(&card->pcidev->dev, FUNC0(skb),
				 FUNC8(skb) - skb->data,
				 DMA_FROM_DEVICE);
		FUNC7(card, skb);
		FUNC3(skb);
	}
}