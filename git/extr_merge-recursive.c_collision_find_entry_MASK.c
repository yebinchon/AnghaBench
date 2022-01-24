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
struct collision_entry {char* target_file; int /*<<< orphan*/  ent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct collision_entry* FUNC1 (struct hashmap*,struct collision_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct collision_entry *FUNC3(struct hashmap *hashmap,
						    char *target_file)
{
	struct collision_entry key;

	FUNC0(&key.ent, FUNC2(target_file));
	key.target_file = target_file;
	return FUNC1(hashmap, &key, ent, NULL);
}