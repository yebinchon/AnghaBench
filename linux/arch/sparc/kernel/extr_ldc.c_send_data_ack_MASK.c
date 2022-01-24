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
struct TYPE_3__ {int /*<<< orphan*/  ackid; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct ldc_packet {TYPE_2__ u; scalar_t__ seqid; scalar_t__ ctrl; int /*<<< orphan*/  stype; int /*<<< orphan*/  type; } ;
struct ldc_channel {scalar_t__ snd_nxt; int /*<<< orphan*/  rcv_nxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDC_ACK ; 
 int /*<<< orphan*/  LDC_DATA ; 
 struct ldc_packet* FUNC0 (struct ldc_channel*,unsigned long*) ; 
 scalar_t__ FUNC1 (struct ldc_packet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ldc_packet*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ldc_channel*,struct ldc_packet*,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ldc_channel *lp)
{
	unsigned long new_tail;
	struct ldc_packet *p;

	p = FUNC0(lp, &new_tail);
	if (FUNC1(p)) {
		int err;

		FUNC2(p, 0, sizeof(*p));
		p->type = LDC_DATA;
		p->stype = LDC_ACK;
		p->ctrl = 0;
		p->seqid = lp->snd_nxt + 1;
		p->u.r.ackid = lp->rcv_nxt;

		err = FUNC3(lp, p, new_tail);
		if (!err)
			lp->snd_nxt++;
	}
}