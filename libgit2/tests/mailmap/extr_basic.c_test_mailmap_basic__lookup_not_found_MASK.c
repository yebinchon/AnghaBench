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
typedef  int /*<<< orphan*/  git_mailmap_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  mailmap ; 

void FUNC2(void)
{
	const git_mailmap_entry *entry = FUNC1(
		mailmap, "Whoever", "doesnotexist@fo.com");
	FUNC0(!entry);
}