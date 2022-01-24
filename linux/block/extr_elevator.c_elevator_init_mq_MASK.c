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
struct request_queue {int /*<<< orphan*/  required_elevator_features; int /*<<< orphan*/  elevator; int /*<<< orphan*/  queue_flags; } ;
struct elevator_type {int /*<<< orphan*/  elevator_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int FUNC2 (struct request_queue*,struct elevator_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 
 struct elevator_type* FUNC6 (struct request_queue*) ; 
 struct elevator_type* FUNC7 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct elevator_type*) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct request_queue *q)
{
	struct elevator_type *e;
	int err;

	if (!FUNC9(q))
		return;

	FUNC0(FUNC11(QUEUE_FLAG_REGISTERED, &q->queue_flags));

	if (FUNC12(q->elevator))
		return;

	if (!q->required_elevator_features)
		e = FUNC7(q);
	else
		e = FUNC6(q);
	if (!e)
		return;

	FUNC1(q);
	FUNC3(q);

	err = FUNC2(q, e);

	FUNC5(q);
	FUNC4(q);

	if (err) {
		FUNC10("\"%s\" elevator initialization failed, "
			"falling back to \"none\"\n", e->elevator_name);
		FUNC8(e);
	}
}