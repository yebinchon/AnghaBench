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
struct sk_buff {int dummy; } ;
struct frame {struct sk_buff* skb; int /*<<< orphan*/  sent; int /*<<< orphan*/  waited_total; scalar_t__ waited; int /*<<< orphan*/  iter; int /*<<< orphan*/  buf; TYPE_1__* t; } ;
struct TYPE_2__ {int /*<<< orphan*/  d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct frame*) ; 
 struct frame* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct frame *
FUNC2(struct frame *f)
{
	struct frame *nf;
	struct sk_buff *skb;

	nf = FUNC1(f->t->d);
	if (!nf)
		return NULL;
	if (nf->t == f->t) {
		FUNC0(nf);
		return NULL;
	}

	skb = nf->skb;
	nf->skb = f->skb;
	nf->buf = f->buf;
	nf->iter = f->iter;
	nf->waited = 0;
	nf->waited_total = f->waited_total;
	nf->sent = f->sent;
	f->skb = skb;

	return nf;
}