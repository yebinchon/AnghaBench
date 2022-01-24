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
struct hashmap {int dummy; } ;
struct dir_rename_entry {int dummy; } ;

/* Variables and functions */
 struct dir_rename_entry* FUNC0 (struct hashmap*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static struct dir_rename_entry *FUNC4(const char *path,
						  struct hashmap *dir_renames)
{
	char *temp = FUNC3(path);
	char *end;
	struct dir_rename_entry *entry = NULL;

	while ((end = FUNC2(temp, '/'))) {
		*end = '\0';
		entry = FUNC0(dir_renames, temp);
		if (entry)
			break;
	}
	FUNC1(temp);
	return entry;
}