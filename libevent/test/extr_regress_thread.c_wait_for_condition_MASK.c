#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct alerted_record {int timed_out; int /*<<< orphan*/  alerted_at; TYPE_1__* cond; TYPE_2__ delay; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;
typedef  int /*<<< orphan*/  THREAD_FN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static THREAD_FN
FUNC6(void *arg)
{
	struct alerted_record *rec = arg;
	int r;

	FUNC0(rec->cond->lock, 0);
	if (rec->delay.tv_sec || rec->delay.tv_usec) {
		r = FUNC3(rec->cond->cond, rec->cond->lock,
		    &rec->delay);
	} else {
		r = FUNC2(rec->cond->cond, rec->cond->lock);
	}
	FUNC1(rec->cond->lock, 0);

	FUNC5(&rec->alerted_at, NULL);
	if (r == 1)
		rec->timed_out = 1;

	FUNC4();
}