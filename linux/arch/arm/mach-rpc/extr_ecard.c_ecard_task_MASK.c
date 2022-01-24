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
struct ecard_request {int /*<<< orphan*/  complete; int /*<<< orphan*/  (* fn ) (struct ecard_request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * ecard_req ; 
 int /*<<< orphan*/  ecard_wait ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecard_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ecard_request* FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(void * unused)
{
	/*
	 * Allocate a mm.  We're not a lazy-TLB kernel task since we need
	 * to set page table entries where the user space would be.  Note
	 * that this also creates the page tables.  Failure is not an
	 * option here.
	 */
	if (FUNC1())
		FUNC2("kecardd: unable to alloc mm\n");

	while (1) {
		struct ecard_request *req;

		FUNC4(ecard_wait, ecard_req != NULL);

		req = FUNC5(&ecard_req, NULL);
		if (req != NULL) {
			req->fn(req);
			FUNC0(req->complete);
		}
	}
}