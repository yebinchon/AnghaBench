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
struct checkout_index_entry {int member_0; int member_2; char* member_3; int /*<<< orphan*/  member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTING_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTING_OURS_OID ; 
 int /*<<< orphan*/  CONFLICTING_THEIRS_OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct checkout_index_entry*,int) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct checkout_index_entry checkout_index_entries[] = {
		{ 0100644, CONFLICTING_ANCESTOR_OID, 1, "conflicting.txt" },
		{ 0100644, CONFLICTING_OURS_OID, 2, "conflicting.txt" },
		{ 0100644, CONFLICTING_THEIRS_OID, 3, "conflicting.txt" },
	};

	FUNC1(checkout_index_entries, 3);
	FUNC0(FUNC2(g_index));
}