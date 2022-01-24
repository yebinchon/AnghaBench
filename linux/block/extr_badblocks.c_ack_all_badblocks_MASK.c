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
typedef  int /*<<< orphan*/  u64 ;
struct badblocks {scalar_t__ changed; int count; int /*<<< orphan*/  lock; scalar_t__ unacked_exist; int /*<<< orphan*/ * page; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct badblocks *bb)
{
	if (bb->page == NULL || bb->changed)
		/* no point even trying */
		return;
	FUNC4(&bb->lock);

	if (bb->changed == 0 && bb->unacked_exist) {
		u64 *p = bb->page;
		int i;

		for (i = 0; i < bb->count ; i++) {
			if (!FUNC0(p[i])) {
				sector_t start = FUNC3(p[i]);
				int len = FUNC1(p[i]);

				p[i] = FUNC2(start, len, 1);
			}
		}
		bb->unacked_exist = 0;
	}
	FUNC5(&bb->lock);
}