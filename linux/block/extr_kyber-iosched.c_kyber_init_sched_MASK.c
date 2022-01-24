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
struct request_queue {struct elevator_queue* elevator; } ;
struct kyber_queue_data {int dummy; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {struct kyber_queue_data* elevator_data; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct kyber_queue_data*) ; 
 int FUNC1 (struct kyber_queue_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 struct elevator_queue* FUNC3 (struct request_queue*,struct elevator_type*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct kyber_queue_data* FUNC5 (struct request_queue*) ; 

__attribute__((used)) static int FUNC6(struct request_queue *q, struct elevator_type *e)
{
	struct kyber_queue_data *kqd;
	struct elevator_queue *eq;

	eq = FUNC3(q, e);
	if (!eq)
		return -ENOMEM;

	kqd = FUNC5(q);
	if (FUNC0(kqd)) {
		FUNC4(&eq->kobj);
		return FUNC1(kqd);
	}

	FUNC2(q);

	eq->elevator_data = kqd;
	q->elevator = eq;

	return 0;
}