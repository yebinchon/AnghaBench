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
struct dma_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKB_ALLOC_LEN ; 
 int /*<<< orphan*/  SKB_RESERVE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct dma_desc*,struct sk_buff*,int) ; 
 scalar_t__ cur_rxl ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ dirty_rxl ; 
 int /*<<< orphan*/  FUNC2 (struct dma_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dma_desc *desc,
		struct sk_buff **skbl, int num)
{
	int i;

	FUNC2(desc, 0, num * sizeof(*desc));
	for (i = 0; i < num; i++) {
		skbl[i] = FUNC1(SKB_ALLOC_LEN);
		if (!skbl[i]) {
			i = num;
			break;
		}
		FUNC3(skbl[i], SKB_RESERVE_LEN);
		FUNC0(&desc[i], skbl[i], (num - 1 == i));
	}

	cur_rxl = 0;
	dirty_rxl = 0;
}