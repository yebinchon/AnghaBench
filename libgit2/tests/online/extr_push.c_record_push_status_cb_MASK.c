#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  statuses; } ;
typedef  TYPE_1__ record_callbacks_data ;
struct TYPE_8__ {struct TYPE_8__* msg; int /*<<< orphan*/  success; struct TYPE_8__* ref; } ;
typedef  TYPE_2__ push_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int,int) ; 
 TYPE_2__* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(const char *ref, const char *msg, void *payload)
{
	record_callbacks_data *data = (record_callbacks_data *) payload;
	push_status *s;

	FUNC0(s = FUNC1(1, sizeof(*s)));
	if (ref)
		FUNC0(s->ref = FUNC2(ref));
	s->success = (msg == NULL);
	if (msg)
		FUNC0(s->msg = FUNC2(msg));

	FUNC3(&data->statuses, s);

	return 0;
}