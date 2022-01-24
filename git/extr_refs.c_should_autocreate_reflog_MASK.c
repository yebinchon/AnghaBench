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

/* Variables and functions */
#define  LOG_REFS_ALWAYS 129 
#define  LOG_REFS_NORMAL 128 
 int log_all_ref_updates ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

int FUNC2(const char *refname)
{
	switch (log_all_ref_updates) {
	case LOG_REFS_ALWAYS:
		return 1;
	case LOG_REFS_NORMAL:
		return FUNC0(refname, "refs/heads/") ||
			FUNC0(refname, "refs/remotes/") ||
			FUNC0(refname, "refs/notes/") ||
			!FUNC1(refname, "HEAD");
	default:
		return 0;
	}
}