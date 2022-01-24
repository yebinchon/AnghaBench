#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_revwalk_hide_cb ;
struct TYPE_5__ {int limited; void* hide_cb_payload; scalar_t__ hide_cb; scalar_t__ walking; } ;
typedef  TYPE_1__ git_revwalk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(
	git_revwalk *walk,
	git_revwalk_hide_cb hide_cb,
	void *payload)
{
	FUNC0(walk);

	if (walk->walking)
		FUNC1(walk);

	walk->hide_cb = hide_cb;
	walk->hide_cb_payload = payload;

	if (hide_cb)
		walk->limited = 1;

	return 0;
}