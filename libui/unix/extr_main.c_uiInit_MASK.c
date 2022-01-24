#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uiInitOptions ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ GError ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  g_direct_equal ; 
 int /*<<< orphan*/  g_direct_hash ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  timers ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  uiprivOptions ; 

const char *FUNC6(uiInitOptions *o)
{
	GError *err = NULL;
	const char *msg;

	uiprivOptions = *o;
	if (FUNC3(NULL, NULL, NULL, NULL, NULL, &err) == FALSE) {
		msg = FUNC2(err->message);
		FUNC0(err);
		return msg;
	}
	FUNC4();
	FUNC5();
	timers = FUNC1(g_direct_hash, g_direct_equal);
	return NULL;
}