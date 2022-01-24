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
typedef  int /*<<< orphan*/  timestamp_t ;
struct object_id {int dummy; } ;
struct grab_nth_branch_switch_cbdata {scalar_t__ remaining; int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(struct object_id *ooid, struct object_id *noid,
				  const char *email, timestamp_t timestamp, int tz,
				  const char *message, void *cb_data)
{
	struct grab_nth_branch_switch_cbdata *cb = cb_data;
	const char *match = NULL, *target = NULL;
	size_t len;

	if (FUNC0(message, "checkout: moving from ", &match))
		target = FUNC3(match, " to ");

	if (!match || !target)
		return 0;
	if (--(cb->remaining) == 0) {
		len = target - match;
		FUNC2(cb->sb);
		FUNC1(cb->sb, match, len);
		return 1; /* we are done */
	}
	return 0;
}