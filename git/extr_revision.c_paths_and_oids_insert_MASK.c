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
struct path_and_oids_entry {char* path; int /*<<< orphan*/  trees; int /*<<< orphan*/  ent; } ;
struct object_id {int dummy; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct path_and_oids_entry* FUNC1 (struct hashmap*,struct path_and_oids_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int FUNC5 (char const*) ; 
 struct path_and_oids_entry* FUNC6 (int,int) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct hashmap *map,
				  const char *path,
				  const struct object_id *oid)
{
	int hash = FUNC5(path);
	struct path_and_oids_entry key;
	struct path_and_oids_entry *entry;

	FUNC0(&key.ent, hash);

	/* use a shallow copy for the lookup */
	key.path = (char *)path;
	FUNC3(&key.trees, 0);

	entry = FUNC1(map, &key, ent, NULL);
	if (!entry) {
		entry = FUNC6(1, sizeof(struct path_and_oids_entry));
		FUNC0(&entry->ent, hash);
		entry->path = FUNC7(key.path);
		FUNC3(&entry->trees, 16);
		FUNC2(map, &entry->ent);
	}

	FUNC4(&entry->trees, oid);
}