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
struct sf_buffer {unsigned long* sdbt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long* FUNC2 (unsigned long*) ; 
 scalar_t__ FUNC3 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct sf_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sfdbg ; 

__attribute__((used)) static void FUNC5(struct sf_buffer *sfb)
{
	unsigned long *sdbt, *curr;

	if (!sfb->sdbt)
		return;

	sdbt = sfb->sdbt;
	curr = sdbt;

	/* Free the SDBT after all SDBs are processed... */
	while (1) {
		if (!*curr || !sdbt)
			break;

		/* Process table-link entries */
		if (FUNC3(curr)) {
			curr = FUNC2(curr);
			if (sdbt)
				FUNC1((unsigned long) sdbt);

			/* If the origin is reached, sampling buffer is freed */
			if (curr == sfb->sdbt)
				break;
			else
				sdbt = curr;
		} else {
			/* Process SDB pointer */
			if (*curr) {
				FUNC1(*curr);
				curr++;
			}
		}
	}

	FUNC0(sfdbg, 5,
			    "free_sampling_buffer: freed sdbt=%p\n", sfb->sdbt);
	FUNC4(sfb, 0, sizeof(*sfb));
}