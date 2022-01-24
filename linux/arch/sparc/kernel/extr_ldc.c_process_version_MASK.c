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
struct ldc_version {int dummy; } ;
struct TYPE_2__ {scalar_t__ u_data; } ;
struct ldc_packet {int stype; TYPE_1__ u; } ;
struct ldc_channel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ldc_channel*) ; 
#define  LDC_ACK 130 
#define  LDC_INFO 129 
#define  LDC_NACK 128 
 int FUNC1 (struct ldc_channel*,struct ldc_version*) ; 
 int FUNC2 (struct ldc_channel*,struct ldc_version*) ; 
 int FUNC3 (struct ldc_channel*,struct ldc_version*) ; 

__attribute__((used)) static int FUNC4(struct ldc_channel *lp,
			   struct ldc_packet *p)
{
	struct ldc_version *vp;

	vp = (struct ldc_version *) p->u.u_data;

	switch (p->stype) {
	case LDC_INFO:
		return FUNC2(lp, vp);

	case LDC_ACK:
		return FUNC1(lp, vp);

	case LDC_NACK:
		return FUNC3(lp, vp);

	default:
		return FUNC0(lp);
	}
}