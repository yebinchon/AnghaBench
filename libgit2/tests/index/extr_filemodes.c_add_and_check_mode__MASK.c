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
struct TYPE_3__ {scalar_t__ mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,int,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC6(
	git_index *index, const char *filename, unsigned int expect_mode,
	const char *file, int line)
{
	size_t pos;
	const git_index_entry *entry;

	FUNC0(FUNC3(index, filename));

	FUNC1(!FUNC4(&pos, index, filename),
		file, line, "Cannot find index entry", NULL, 1);

	entry = FUNC5(index, pos);

	FUNC2(file, line, "Expected mode does not match index",
		1, "%07o", (unsigned int)entry->mode, (unsigned int)expect_mode);
}