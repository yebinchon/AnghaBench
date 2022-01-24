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
struct bfq_queue {int /*<<< orphan*/  ref; } ;
struct bfq_data {int /*<<< orphan*/  root_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_data*,struct bfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_data*,char*,struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfq_data*,struct bfq_queue*,char*,struct bfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_queue*) ; 

__attribute__((used)) static void FUNC4(struct bfq_data *bfqd,
				 struct bfq_queue **bfqq_ptr)
{
	struct bfq_queue *bfqq = *bfqq_ptr;

	FUNC1(bfqd, "put_async_bfqq: %p", bfqq);
	if (bfqq) {
		FUNC0(bfqd, bfqq, bfqd->root_group);

		FUNC2(bfqd, bfqq, "put_async_bfqq: putting %p, %d",
			     bfqq, bfqq->ref);
		FUNC3(bfqq);
		*bfqq_ptr = NULL;
	}
}