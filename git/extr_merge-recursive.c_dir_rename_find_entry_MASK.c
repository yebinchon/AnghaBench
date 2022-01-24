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
struct dir_rename_entry {char* dir; int /*<<< orphan*/  ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dir_rename_entry* FUNC1 (struct hashmap*,struct dir_rename_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct dir_rename_entry *FUNC3(struct hashmap *hashmap,
						      char *dir)
{
	struct dir_rename_entry key;

	if (dir == NULL)
		return NULL;
	FUNC0(&key.ent, FUNC2(dir));
	key.dir = dir;
	return FUNC1(hashmap, &key, ent, NULL);
}