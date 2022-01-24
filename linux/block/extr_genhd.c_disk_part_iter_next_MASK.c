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
struct hd_struct {int dummy; } ;
struct disk_part_tbl {int len; int /*<<< orphan*/ * part; } ;
struct disk_part_iter {int flags; int idx; struct hd_struct* part; TYPE_1__* disk; } ;
struct TYPE_2__ {int /*<<< orphan*/  part_tbl; } ;

/* Variables and functions */
 int DISK_PITER_INCL_EMPTY ; 
 int DISK_PITER_INCL_EMPTY_PART0 ; 
 int DISK_PITER_INCL_PART0 ; 
 int DISK_PITER_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct hd_struct*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct hd_struct *FUNC7(struct disk_part_iter *piter)
{
	struct disk_part_tbl *ptbl;
	int inc, end;

	/* put the last partition */
	FUNC0(piter->part);
	piter->part = NULL;

	/* get part_tbl */
	FUNC5();
	ptbl = FUNC4(piter->disk->part_tbl);

	/* determine iteration parameters */
	if (piter->flags & DISK_PITER_REVERSE) {
		inc = -1;
		if (piter->flags & (DISK_PITER_INCL_PART0 |
				    DISK_PITER_INCL_EMPTY_PART0))
			end = -1;
		else
			end = 0;
	} else {
		inc = 1;
		end = ptbl->len;
	}

	/* iterate to the next partition */
	for (; piter->idx != end; piter->idx += inc) {
		struct hd_struct *part;

		part = FUNC4(ptbl->part[piter->idx]);
		if (!part)
			continue;
		if (!FUNC2(part) &&
		    !(piter->flags & DISK_PITER_INCL_EMPTY) &&
		    !(piter->flags & DISK_PITER_INCL_EMPTY_PART0 &&
		      piter->idx == 0))
			continue;

		FUNC1(FUNC3(part));
		piter->part = part;
		piter->idx += inc;
		break;
	}

	FUNC6();

	return piter->part;
}