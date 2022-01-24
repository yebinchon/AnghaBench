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
typedef  int /*<<< orphan*/  git_mailmap ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int FUNC2(
	git_mailmap *mm, const char *real_name, const char *real_email,
	const char *replace_name, const char *replace_email)
{
	return FUNC0(
		mm,
		real_name, real_name ? FUNC1(real_name) : 0,
		real_email, real_email ? FUNC1(real_email) : 0,
		replace_name, replace_name ? FUNC1(replace_name) : 0,
		replace_email, FUNC1(replace_email));
}