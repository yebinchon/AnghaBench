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
struct wt_status {int /*<<< orphan*/  hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  WT_STATUS_HEADER ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC2 (struct wt_status*,char const*,char*,char const*) ; 

__attribute__((used)) static void FUNC3(struct wt_status *s,
					     const char *what,
					     const char *how)
{
	const char *c = FUNC1(WT_STATUS_HEADER, s);
	FUNC2(s, c, "%s:", what);
	if (!s->hints)
		return;
	FUNC2(s, c, FUNC0("  (use \"git %s <file>...\" to include in what will be committed)"), how);
}