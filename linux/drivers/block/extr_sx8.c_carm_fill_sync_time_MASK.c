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
typedef  int /*<<< orphan*/  time64_t ;
struct carm_msg_sync_time {void* timestamp; void* handle; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct carm_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARM_MSG_MISC ; 
 int /*<<< orphan*/  MISC_SET_TIME ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct carm_msg_sync_time*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC4(struct carm_host *host,
					unsigned int idx, void *mem)
{
	struct carm_msg_sync_time *st = mem;

	time64_t tv = FUNC2();

	FUNC3(st, 0, sizeof(*st));
	st->type	= CARM_MSG_MISC;
	st->subtype	= MISC_SET_TIME;
	st->handle	= FUNC1(FUNC0(idx));
	st->timestamp	= FUNC1(tv);

	return sizeof(struct carm_msg_sync_time);
}