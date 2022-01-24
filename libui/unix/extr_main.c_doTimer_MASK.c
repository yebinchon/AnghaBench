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
struct timer {int /*<<< orphan*/  data; int /*<<< orphan*/  (* f ) (int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timers ; 
 int /*<<< orphan*/  FUNC2 (struct timer*) ; 

__attribute__((used)) static gboolean FUNC3(gpointer data)
{
	struct timer *t = (struct timer *) data;

	if (!(*(t->f))(t->data)) {
		FUNC0(timers, t);
		FUNC2(t);
		return FALSE;
	}
	return TRUE;
}