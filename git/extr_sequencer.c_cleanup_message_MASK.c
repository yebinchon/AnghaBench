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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
typedef  enum commit_msg_cleanup_mode { ____Placeholder_commit_msg_cleanup_mode } commit_msg_cleanup_mode ;

/* Variables and functions */
 int COMMIT_MSG_CLEANUP_ALL ; 
 int COMMIT_MSG_CLEANUP_NONE ; 
 int COMMIT_MSG_CLEANUP_SCISSORS ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct strbuf *msgbuf,
	enum commit_msg_cleanup_mode cleanup_mode, int verbose)
{
	if (verbose || /* Truncate the message just before the diff, if any. */
	    cleanup_mode == COMMIT_MSG_CLEANUP_SCISSORS)
		FUNC0(msgbuf, FUNC2(msgbuf->buf, msgbuf->len));
	if (cleanup_mode != COMMIT_MSG_CLEANUP_NONE)
		FUNC1(msgbuf, cleanup_mode == COMMIT_MSG_CLEANUP_ALL);
}