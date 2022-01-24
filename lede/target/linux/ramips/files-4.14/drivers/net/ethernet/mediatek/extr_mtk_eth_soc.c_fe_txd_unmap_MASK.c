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
struct fe_tx_buf {struct sk_buff* skb; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_DUMMY_DESC ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  dma_addr0 ; 
 int /*<<< orphan*/  dma_addr1 ; 
 int /*<<< orphan*/  dma_len0 ; 
 int /*<<< orphan*/  dma_len1 ; 
 int /*<<< orphan*/  FUNC1 (struct fe_tx_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fe_tx_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fe_tx_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct fe_tx_buf *tx_buf)
{
	if (FUNC2(tx_buf, dma_len0))
		FUNC4(dev,
			       FUNC1(tx_buf, dma_addr0),
			       FUNC2(tx_buf, dma_len0),
			       DMA_TO_DEVICE);

	if (FUNC2(tx_buf, dma_len1))
		FUNC4(dev,
			       FUNC1(tx_buf, dma_addr1),
			       FUNC2(tx_buf, dma_len1),
			       DMA_TO_DEVICE);

	FUNC3(tx_buf, dma_addr0, 0);
	FUNC3(tx_buf, dma_addr1, 0);
	if (tx_buf->skb && (tx_buf->skb != (struct sk_buff *)DMA_DUMMY_DESC))
		FUNC0(tx_buf->skb);
	tx_buf->skb = NULL;
}