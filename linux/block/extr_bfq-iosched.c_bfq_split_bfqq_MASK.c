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
struct bfq_queue {int /*<<< orphan*/  pid; int /*<<< orphan*/  bfqd; } ;
struct bfq_io_cq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bfq_queue*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfq_queue*) ; 
 int FUNC5 (struct bfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfq_io_cq*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* current ; 

__attribute__((used)) static struct bfq_queue *
FUNC7(struct bfq_io_cq *bic, struct bfq_queue *bfqq)
{
	FUNC2(bfqq->bfqd, bfqq, "splitting queue");

	if (FUNC5(bfqq) == 1) {
		bfqq->pid = current->pid;
		FUNC0(bfqq);
		FUNC1(bfqq);
		return bfqq;
	}

	FUNC6(bic, NULL, 1);

	FUNC3(bfqq);

	FUNC4(bfqq);
	return NULL;
}