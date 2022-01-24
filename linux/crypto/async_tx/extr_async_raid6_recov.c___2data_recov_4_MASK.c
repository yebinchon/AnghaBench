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
struct page {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct async_submit_ctl {int flags; void* scribble; void* cb_param; int /*<<< orphan*/ * cb_fn; } ;
typedef  enum async_tx_flags { ____Placeholder_async_tx_flags } async_tx_flags ;
typedef  int /*<<< orphan*/ * dma_async_tx_callback ;

/* Variables and functions */
 int ASYNC_TX_FENCE ; 
 int ASYNC_TX_XOR_ZERO_DST ; 
 struct dma_async_tx_descriptor* FUNC0 (struct page*,struct page**,unsigned char*,size_t,struct async_submit_ctl*) ; 
 struct dma_async_tx_descriptor* FUNC1 (struct page*,struct page**,int /*<<< orphan*/ ,int,size_t,struct async_submit_ctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct async_submit_ctl*,int,struct dma_async_tx_descriptor*,int /*<<< orphan*/ *,void*,void*) ; 
 unsigned char* raid6_gfexi ; 
 size_t* raid6_gfexp ; 
 unsigned char* raid6_gfinv ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC3(int disks, size_t bytes, int faila, int failb,
		struct page **blocks, struct async_submit_ctl *submit)
{
	struct dma_async_tx_descriptor *tx = NULL;
	struct page *p, *q, *a, *b;
	struct page *srcs[2];
	unsigned char coef[2];
	enum async_tx_flags flags = submit->flags;
	dma_async_tx_callback cb_fn = submit->cb_fn;
	void *cb_param = submit->cb_param;
	void *scribble = submit->scribble;

	p = blocks[disks-2];
	q = blocks[disks-1];

	a = blocks[faila];
	b = blocks[failb];

	/* in the 4 disk case P + Pxy == P and Q + Qxy == Q */
	/* Dx = A*(P+Pxy) + B*(Q+Qxy) */
	srcs[0] = p;
	srcs[1] = q;
	coef[0] = raid6_gfexi[failb-faila];
	coef[1] = raid6_gfinv[raid6_gfexp[faila]^raid6_gfexp[failb]];
	FUNC2(submit, ASYNC_TX_FENCE, tx, NULL, NULL, scribble);
	tx = FUNC0(b, srcs, coef, bytes, submit);

	/* Dy = P+Pxy+Dx */
	srcs[0] = p;
	srcs[1] = b;
	FUNC2(submit, flags | ASYNC_TX_XOR_ZERO_DST, tx, cb_fn,
			  cb_param, scribble);
	tx = FUNC1(a, srcs, 0, 2, bytes, submit);

	return tx;

}