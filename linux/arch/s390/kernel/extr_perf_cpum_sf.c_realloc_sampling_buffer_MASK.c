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
struct sf_buffer {scalar_t__ sdbt; unsigned long* tail; void* num_sdbt; void* num_sdb; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,void*,void*) ; 
 scalar_t__ FUNC2 (unsigned long*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 scalar_t__ FUNC5 (unsigned long*) ; 
 int /*<<< orphan*/  sfdbg ; 

__attribute__((used)) static int FUNC6(struct sf_buffer *sfb,
				   unsigned long num_sdb, gfp_t gfp_flags)
{
	int i, rc;
	unsigned long *new, *tail;

	if (!sfb->sdbt || !sfb->tail)
		return -EINVAL;

	if (!FUNC4(sfb->tail))
		return -EINVAL;

	/* Append to the existing sampling buffer, overwriting the table-link
	 * register.
	 * The tail variables always points to the "tail" (last and table-link)
	 * entry in an SDB-table.
	 */
	tail = sfb->tail;

	/* Do a sanity check whether the table-link entry points to
	 * the sampling buffer origin.
	 */
	if (sfb->sdbt != FUNC2(tail)) {
		FUNC1(sfdbg, 3, "realloc_sampling_buffer: "
				    "sampling buffer is not linked: origin=%p"
				    "tail=%p\n",
				    (void *) sfb->sdbt, (void *) tail);
		return -EINVAL;
	}

	/* Allocate remaining SDBs */
	rc = 0;
	for (i = 0; i < num_sdb; i++) {
		/* Allocate a new SDB-table if it is full. */
		if (FUNC5(tail)) {
			new = (unsigned long *) FUNC3(gfp_flags);
			if (!new) {
				rc = -ENOMEM;
				break;
			}
			sfb->num_sdbt++;
			/* Link current page to tail of chain */
			*tail = (unsigned long)(void *) new + 1;
			tail = new;
		}

		/* Allocate a new sample-data-block.
		 * If there is not enough memory, stop the realloc process
		 * and simply use what was allocated.  If this is a temporary
		 * issue, a new realloc call (if required) might succeed.
		 */
		rc = FUNC0(tail, gfp_flags);
		if (rc)
			break;
		sfb->num_sdb++;
		tail++;
	}

	/* Link sampling buffer to its origin */
	*tail = (unsigned long) sfb->sdbt + 1;
	sfb->tail = tail;

	FUNC1(sfdbg, 4, "realloc_sampling_buffer: new buffer"
			    " settings: sdbt=%lu sdb=%lu\n",
			    sfb->num_sdbt, sfb->num_sdb);
	return rc;
}