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
struct rev_info {int use_terminator; int /*<<< orphan*/  commit_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_USERFORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_format ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(struct rev_info *rev, const char *cp, int is_tformat)
{
	FUNC0(user_format);
	user_format = FUNC1(cp);
	if (is_tformat)
		rev->use_terminator = 1;
	rev->commit_format = CMIT_FMT_USERFORMAT;
}