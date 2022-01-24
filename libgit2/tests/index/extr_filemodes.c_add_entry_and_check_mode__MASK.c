#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  new_entry ;
struct TYPE_8__ {char* path; scalar_t__ mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  scalar_t__ git_filemode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char*,int,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(
	git_index *index, bool from_file, git_filemode_t mode,
	const char *file, int line)
{
	size_t pos;
	const git_index_entry* entry;
	git_index_entry new_entry;

	/* If old_filename exists, we copy that to the new file, and test
	 * git_index_add(), otherwise create a new entry testing git_index_add_from_buffer
	 */
	if (from_file)
	{
		FUNC0(!FUNC4(&pos, index, "exec_off"),
			file, line, "Cannot find original index entry", NULL, 1);

		entry = FUNC5(index, pos);

		FUNC6(&new_entry, entry, sizeof(new_entry));
	}
	else
		FUNC7(&new_entry, 0x0, sizeof(git_index_entry));

	new_entry.path = "filemodes/explicit_test";
	new_entry.mode = mode;

	if (from_file)
	{
		FUNC0(!FUNC2(index, &new_entry),
			file, line, "Cannot add index entry", NULL, 1);
	}
	else
	{
		const char *content = "hey there\n";
		FUNC0(!FUNC3(index, &new_entry, content, FUNC8(content)),
			file, line, "Cannot add index entry from buffer", NULL, 1);
	}

	FUNC0(!FUNC4(&pos, index, "filemodes/explicit_test"),
		file, line, "Cannot find new index entry", NULL, 1);

	entry = FUNC5(index, pos);

	FUNC1(file, line, "Expected mode does not match index",
		1, "%07o", (unsigned int)entry->mode, (unsigned int)mode);
}