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
typedef  void* u8 ;
struct TYPE_2__ {int /*<<< orphan*/  u_data; } ;
struct ldc_packet {TYPE_1__ u; void* ctrl; void* stype; int /*<<< orphan*/  type; } ;
struct ldc_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDC_CTRL ; 
 struct ldc_packet* FUNC0 (struct ldc_channel*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ldc_packet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ldc_packet *FUNC3(struct ldc_channel *lp,
						 u8 stype, u8 ctrl,
						 void *data, int dlen,
						 unsigned long *new_tail)
{
	struct ldc_packet *p = FUNC0(lp, new_tail);

	if (p) {
		FUNC2(p, 0, sizeof(*p));
		p->type = LDC_CTRL;
		p->stype = stype;
		p->ctrl = ctrl;
		if (data)
			FUNC1(p->u.u_data, data, dlen);
	}
	return p;
}