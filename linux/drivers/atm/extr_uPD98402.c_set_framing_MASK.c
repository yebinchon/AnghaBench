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
struct atm_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  C11T ; 
 int /*<<< orphan*/  C12T ; 
 int /*<<< orphan*/  C13T ; 
 int EINVAL ; 
 char const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDR ; 
 TYPE_1__* FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char const,int /*<<< orphan*/ ) ; 
#define  SONET_FRAME_SDH 129 
#define  SONET_FRAME_SONET 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 char const uPD98402_MDR_SS_MASK ; 
 char const uPD98402_MDR_SS_SHIFT ; 

__attribute__((used)) static int FUNC5(struct atm_dev *dev,unsigned char framing)
{
	static const unsigned char sonet[] = { 1,2,3,0 };
	static const unsigned char sdh[] = { 1,0,0,2 };
	const char *set;
	unsigned long flags;
 
	switch (framing) {
		case SONET_FRAME_SONET:
			set = sonet;
			break;
		case SONET_FRAME_SDH:
			set = sdh;
			break;
		default:
			return -EINVAL;
	}
	FUNC3(&FUNC1(dev)->lock, flags);
	FUNC2(set[0],C11T);
	FUNC2(set[1],C12T);
	FUNC2(set[2],C13T);
	FUNC2((FUNC0(MDR) & ~uPD98402_MDR_SS_MASK) | (set[3] <<
	    uPD98402_MDR_SS_SHIFT),MDR);
	FUNC4(&FUNC1(dev)->lock, flags);
	return 0;
}