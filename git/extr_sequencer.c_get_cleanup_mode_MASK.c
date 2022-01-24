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
typedef  enum commit_msg_cleanup_mode { ____Placeholder_commit_msg_cleanup_mode } commit_msg_cleanup_mode ;

/* Variables and functions */
 int COMMIT_MSG_CLEANUP_ALL ; 
 int COMMIT_MSG_CLEANUP_NONE ; 
 int COMMIT_MSG_CLEANUP_SCISSORS ; 
 int COMMIT_MSG_CLEANUP_SPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

enum commit_msg_cleanup_mode FUNC3(const char *cleanup_arg,
	int use_editor)
{
	if (!cleanup_arg || !FUNC2(cleanup_arg, "default"))
		return use_editor ? COMMIT_MSG_CLEANUP_ALL :
				    COMMIT_MSG_CLEANUP_SPACE;
	else if (!FUNC2(cleanup_arg, "verbatim"))
		return COMMIT_MSG_CLEANUP_NONE;
	else if (!FUNC2(cleanup_arg, "whitespace"))
		return COMMIT_MSG_CLEANUP_SPACE;
	else if (!FUNC2(cleanup_arg, "strip"))
		return COMMIT_MSG_CLEANUP_ALL;
	else if (!FUNC2(cleanup_arg, "scissors"))
		return use_editor ? COMMIT_MSG_CLEANUP_SCISSORS :
				    COMMIT_MSG_CLEANUP_SPACE;
	else
		FUNC1(FUNC0("Invalid cleanup mode %s"), cleanup_arg);
}