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
struct request {int dummy; } ;
struct deadline_data {struct request** next_rq; } ;

/* Variables and functions */
 struct request* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct deadline_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct request*) ; 
 int FUNC3 (struct request*) ; 

__attribute__((used)) static inline void
FUNC4(struct deadline_data *dd, struct request *rq)
{
	const int data_dir = FUNC3(rq);

	if (dd->next_rq[data_dir] == rq)
		dd->next_rq[data_dir] = FUNC0(rq);

	FUNC2(FUNC1(dd, rq), rq);
}