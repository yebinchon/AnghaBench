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
struct event_base {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_active_event_fn ; 
 int /*<<< orphan*/  dump_inserted_event_fn ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  th_base_lock ; 

void
FUNC4(struct event_base *base, FILE *output)
{
	FUNC0(base, th_base_lock);
	FUNC3(output, "Inserted events:\n");
	FUNC2(base, dump_inserted_event_fn, output);

	FUNC3(output, "Active events:\n");
	FUNC2(base, dump_active_event_fn, output);
	FUNC1(base, th_base_lock);
}