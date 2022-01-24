#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_6__ {int sigh; } ;
typedef  TYPE_1__ FPU_REG ;

/* Variables and functions */
 TYPE_1__ CONST_QNaN ; 
 int CW_Invalid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXP_OVER ; 
 int EX_INTERNAL ; 
 int EX_Invalid ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_Special ; 
#define  TW_NaN 128 
 int control_word ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(FPU_REG *st0_ptr, u_char st0_tag)
{
	int isNaN;

	switch (st0_tag) {
	case TW_NaN:
		isNaN = (FUNC2(st0_ptr) == EXP_OVER)
		    && (st0_ptr->sigh & 0x80000000);
		if (isNaN && !(st0_ptr->sigh & 0x40000000)) {	/* Signaling ? */
			FUNC0(EX_Invalid);
			if (control_word & CW_Invalid) {
				/* The masked response */
				/* Convert to a QNaN */
				st0_ptr->sigh |= 0x40000000;
				FUNC3();
				FUNC1(st0_ptr, TAG_Special);
			}
		} else if (isNaN) {
			/* A QNaN */
			FUNC3();
			FUNC1(st0_ptr, TAG_Special);
		} else {
			/* pseudoNaN or other unsupported */
			FUNC0(EX_Invalid);
			if (control_word & CW_Invalid) {
				/* The masked response */
				FUNC1(&CONST_QNaN, TAG_Special);
				FUNC3();
				FUNC1(&CONST_QNaN, TAG_Special);
			}
		}
		break;		/* return with a NaN in st(0) */
#ifdef PARANOID
	default:
		EXCEPTION(EX_INTERNAL | 0x0112);
#endif /* PARANOID */
	}
}