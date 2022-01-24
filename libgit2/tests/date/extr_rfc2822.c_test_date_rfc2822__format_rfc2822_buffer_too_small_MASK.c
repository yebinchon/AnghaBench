#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_0; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ git_time ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DATE_RFC2822_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,TYPE_1__*) ; 

void FUNC2(void)
{
	/* "Wed, 10 Apr 2014 08:21:03 +0000" */
	git_time t = {1397031663 + 86400, 0};
	char buf[GIT_DATE_RFC2822_SZ-1];

	FUNC0(FUNC1(buf, sizeof(buf), &t));
}