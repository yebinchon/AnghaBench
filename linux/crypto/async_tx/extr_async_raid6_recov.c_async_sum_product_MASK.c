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
typedef  int u8 ;
struct page {int dummy; } ;
struct dmaengine_unmap_data {int to_cnt; int bidi_cnt; size_t len; void** addr; } ;
struct dma_device {struct dma_async_tx_descriptor* (* device_prep_dma_pq ) (struct dma_chan*,void**,void**,int,unsigned char*,size_t,int) ;struct device* dev; } ;
struct dma_chan {struct dma_device* device; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct device {int dummy; } ;
struct async_submit_ctl {int flags; int /*<<< orphan*/  depend_tx; } ;
typedef  enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int ASYNC_TX_FENCE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_PQ ; 
 int DMA_PREP_FENCE ; 
 int DMA_PREP_PQ_DISABLE_P ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 struct dma_chan* FUNC0 (struct async_submit_ctl*,int /*<<< orphan*/ ,struct page**,int,struct page**,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*,struct dma_async_tx_descriptor*,struct async_submit_ctl*) ; 
 void* FUNC3 (struct device*,struct page*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*,struct dmaengine_unmap_data*) ; 
 struct dmaengine_unmap_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dmaengine_unmap_data*) ; 
 int* FUNC7 (struct page*) ; 
 int** raid6_gfmul ; 
 struct dma_async_tx_descriptor* FUNC8 (struct dma_chan*,void**,void**,int,unsigned char*,size_t,int) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC9(struct page *dest, struct page **srcs, unsigned char *coef,
		  size_t len, struct async_submit_ctl *submit)
{
	struct dma_chan *chan = FUNC0(submit, DMA_PQ,
						      &dest, 1, srcs, 2, len);
	struct dma_device *dma = chan ? chan->device : NULL;
	struct dmaengine_unmap_data *unmap = NULL;
	const u8 *amul, *bmul;
	u8 ax, bx;
	u8 *a, *b, *c;

	if (dma)
		unmap = FUNC5(dma->dev, 3, GFP_NOWAIT);

	if (unmap) {
		struct device *dev = dma->dev;
		dma_addr_t pq[2];
		struct dma_async_tx_descriptor *tx;
		enum dma_ctrl_flags dma_flags = DMA_PREP_PQ_DISABLE_P;

		if (submit->flags & ASYNC_TX_FENCE)
			dma_flags |= DMA_PREP_FENCE;
		unmap->addr[0] = FUNC3(dev, srcs[0], 0, len, DMA_TO_DEVICE);
		unmap->addr[1] = FUNC3(dev, srcs[1], 0, len, DMA_TO_DEVICE);
		unmap->to_cnt = 2;

		unmap->addr[2] = FUNC3(dev, dest, 0, len, DMA_BIDIRECTIONAL);
		unmap->bidi_cnt = 1;
		/* engine only looks at Q, but expects it to follow P */
		pq[1] = unmap->addr[2];

		unmap->len = len;
		tx = dma->device_prep_dma_pq(chan, pq, unmap->addr, 2, coef,
					     len, dma_flags);
		if (tx) {
			FUNC4(tx, unmap);
			FUNC2(chan, tx, submit);
			FUNC6(unmap);
			return tx;
		}

		/* could not get a descriptor, unmap and fall through to
		 * the synchronous path
		 */
		FUNC6(unmap);
	}

	/* run the operation synchronously */
	FUNC1(&submit->depend_tx);
	amul = raid6_gfmul[coef[0]];
	bmul = raid6_gfmul[coef[1]];
	a = FUNC7(srcs[0]);
	b = FUNC7(srcs[1]);
	c = FUNC7(dest);

	while (len--) {
		ax    = amul[*a++];
		bx    = bmul[*b++];
		*c++ = ax ^ bx;
	}

	return NULL;
}