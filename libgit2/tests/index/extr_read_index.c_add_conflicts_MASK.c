#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* path; int mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 char* CONFLICTS_ONE_ANCESTOR_OID ; 
 char* CONFLICTS_ONE_OUR_OID ; 
 char* CONFLICTS_ONE_THEIR_OID ; 
 char* CONFLICTS_TWO_ANCESTOR_OID ; 
 char* CONFLICTS_TWO_OUR_OID ; 
 char* CONFLICTS_TWO_THEIR_OID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC5(git_index *index, const char *filename)
{
	git_index_entry ancestor_entry, our_entry, their_entry;
	static int conflict_idx = 0;
	char *ancestor_ids[] =
		{ CONFLICTS_ONE_ANCESTOR_OID, CONFLICTS_TWO_ANCESTOR_OID };
	char *our_ids[] =
		{ CONFLICTS_ONE_OUR_OID, CONFLICTS_TWO_OUR_OID };
	char *their_ids[] =
		{ CONFLICTS_ONE_THEIR_OID, CONFLICTS_TWO_THEIR_OID };

	conflict_idx = (conflict_idx + 1) % 2;

	FUNC4(&ancestor_entry, 0x0, sizeof(git_index_entry));
	FUNC4(&our_entry, 0x0, sizeof(git_index_entry));
	FUNC4(&their_entry, 0x0, sizeof(git_index_entry));

	ancestor_entry.path = filename;
	ancestor_entry.mode = 0100644;
	FUNC0(&ancestor_entry, 1);
	FUNC3(&ancestor_entry.id, ancestor_ids[conflict_idx]);

	our_entry.path = filename;
	our_entry.mode = 0100644;
	FUNC0(&our_entry, 2);
	FUNC3(&our_entry.id, our_ids[conflict_idx]);

	their_entry.path = filename;
	their_entry.mode = 0100644;
	FUNC0(&ancestor_entry, 2);
	FUNC3(&their_entry.id, their_ids[conflict_idx]);

	FUNC1(FUNC2(index, &ancestor_entry,
		&our_entry, &their_entry));
}