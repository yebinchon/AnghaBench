#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  replace_email; int /*<<< orphan*/  replace_name; int /*<<< orphan*/  real_email; int /*<<< orphan*/  real_name; } ;
typedef  TYPE_1__ git_mailmap_entry ;
struct TYPE_10__ {int /*<<< orphan*/  replace_email; int /*<<< orphan*/  replace_name; int /*<<< orphan*/  real_email; int /*<<< orphan*/  real_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_5__* expected ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* mailmap ; 

void FUNC6(void)
{
	size_t idx;
	const git_mailmap_entry *entry;

	/* Check that we have the expected # of entries */
	FUNC3(FUNC0(expected), FUNC5(&mailmap->entries));

	for (idx = 0; idx < FUNC0(expected); ++idx) {
		/* Try to look up each entry and make sure they match */
		entry = FUNC4(
			mailmap, expected[idx].replace_name, expected[idx].replace_email);

		FUNC1(entry);
		FUNC2(entry->real_name, expected[idx].real_name);
		FUNC2(entry->real_email, expected[idx].real_email);
		FUNC2(entry->replace_name, expected[idx].replace_name);
		FUNC2(entry->replace_email, expected[idx].replace_email);
	}
}