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
struct request_queue {TYPE_1__* elevator; } ;
struct elevator_type {int dummy; } ;
typedef  int /*<<< orphan*/  elevator_name ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELV_NAME_MAX ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 struct elevator_type* FUNC1 (struct request_queue*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct elevator_type*) ; 
 int FUNC4 (struct request_queue*,struct elevator_type*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct request_queue *q, const char *name)
{
	char elevator_name[ELV_NAME_MAX];
	struct elevator_type *e;

	/* Make sure queue is not in the middle of being removed */
	if (!FUNC0(q))
		return -ENOENT;

	/*
	 * Special case for mq, turn off scheduling
	 */
	if (!FUNC6(name, "none", 4)) {
		if (!q->elevator)
			return 0;
		return FUNC4(q, NULL);
	}

	FUNC5(elevator_name, name, sizeof(elevator_name));
	e = FUNC1(q, FUNC7(elevator_name), true);
	if (!e)
		return -EINVAL;

	if (q->elevator &&
	    FUNC2(q->elevator->type, elevator_name, 0)) {
		FUNC3(e);
		return 0;
	}

	return FUNC4(q, e);
}