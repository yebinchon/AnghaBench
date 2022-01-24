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
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const char *FUNC1(const git_commit *commit)
{
	unsigned int count = FUNC0(commit);

	if (count >= 2)
		return " (merge)";
	else if (count == 0)
		return " (initial)";
	else
		return "";
}