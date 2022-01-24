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
struct mpic_msgr {scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENODEV ; 
 struct mpic_msgr* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MSGR_FREE ; 
 scalar_t__ MSGR_INUSE ; 
 unsigned int mpic_msgr_count ; 
 struct mpic_msgr** mpic_msgrs ; 
 int /*<<< orphan*/  msgrs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct mpic_msgr *FUNC3(unsigned int reg_num)
{
	unsigned long flags;
	struct mpic_msgr *msgr;

	/* Assume busy until proven otherwise.  */
	msgr = FUNC0(-EBUSY);

	if (reg_num >= mpic_msgr_count)
		return FUNC0(-ENODEV);

	FUNC1(&msgrs_lock, flags);
	msgr = mpic_msgrs[reg_num];
	if (msgr->in_use == MSGR_FREE)
		msgr->in_use = MSGR_INUSE;
	FUNC2(&msgrs_lock, flags);

	return msgr;
}