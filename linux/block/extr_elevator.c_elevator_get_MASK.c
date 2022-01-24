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
struct request_queue {int /*<<< orphan*/  required_elevator_features; } ;
struct elevator_type {int /*<<< orphan*/  elevator_owner; } ;

/* Variables and functions */
 struct elevator_type* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elv_list_lock ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct elevator_type *FUNC5(struct request_queue *q,
					  const char *name, bool try_loading)
{
	struct elevator_type *e;

	FUNC2(&elv_list_lock);

	e = FUNC0(name, q->required_elevator_features);
	if (!e && try_loading) {
		FUNC3(&elv_list_lock);
		FUNC1("%s-iosched", name);
		FUNC2(&elv_list_lock);
		e = FUNC0(name, q->required_elevator_features);
	}

	if (e && !FUNC4(e->elevator_owner))
		e = NULL;

	FUNC3(&elv_list_lock);
	return e;
}