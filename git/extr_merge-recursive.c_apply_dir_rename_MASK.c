#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct dir_rename_entry {char const* dir; TYPE_1__ new_dir; scalar_t__ non_unique_new_dir; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 char* FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *FUNC5(struct dir_rename_entry *entry,
			      const char *old_path)
{
	struct strbuf new_path = STRBUF_INIT;
	int oldlen, newlen;

	if (entry->non_unique_new_dir)
		return NULL;

	oldlen = FUNC4(entry->dir);
	if (entry->new_dir.len == 0)
		/*
		 * If someone renamed/merged a subdirectory into the root
		 * directory (e.g. 'some/subdir' -> ''), then we want to
		 * avoid returning
		 *     '' + '/filename'
		 * as the rename; we need to make old_path + oldlen advance
		 * past the '/' character.
		 */
		oldlen++;
	newlen = entry->new_dir.len + (FUNC4(old_path) - oldlen) + 1;
	FUNC3(&new_path, newlen);
	FUNC0(&new_path, &entry->new_dir);
	FUNC1(&new_path, &old_path[oldlen]);

	return FUNC2(&new_path, NULL);
}