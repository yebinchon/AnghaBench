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
struct ldc_packet {int ctrl; } ;
struct ldc_channel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ldc_channel*) ; 
#define  LDC_RDX 131 
#define  LDC_RTR 130 
#define  LDC_RTS 129 
#define  LDC_VERS 128 
 int FUNC1 (struct ldc_channel*,struct ldc_packet*) ; 
 int FUNC2 (struct ldc_channel*,struct ldc_packet*) ; 
 int FUNC3 (struct ldc_channel*,struct ldc_packet*) ; 
 int FUNC4 (struct ldc_channel*,struct ldc_packet*) ; 

__attribute__((used)) static int FUNC5(struct ldc_channel *lp,
				 struct ldc_packet *p)
{
	switch (p->ctrl) {
	case LDC_VERS:
		return FUNC4(lp, p);

	case LDC_RTS:
		return FUNC3(lp, p);

	case LDC_RTR:
		return FUNC2(lp, p);

	case LDC_RDX:
		return FUNC1(lp, p);

	default:
		return FUNC0(lp);
	}
}