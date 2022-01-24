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
struct TYPE_3__ {int member_0; int member_1; } ;
typedef  TYPE_1__ git_time ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int GIT_DATE_RFC2822_SZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

void FUNC4(void)
{
	git_time t = {1397031663, 120};
	char buf[GIT_DATE_RFC2822_SZ];

	FUNC1(FUNC2(buf, sizeof(buf), &t));
	FUNC0(FUNC3(buf, "Wed, 9 Apr 2014 10:21:03 +0200") == 0);
}