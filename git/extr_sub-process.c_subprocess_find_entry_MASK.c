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
struct subprocess_entry {char const* cmd; int /*<<< orphan*/  ent; } ;
struct hashmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct subprocess_entry* FUNC1 (struct hashmap*,struct subprocess_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

struct subprocess_entry *FUNC3(struct hashmap *hashmap, const char *cmd)
{
	struct subprocess_entry key;

	FUNC0(&key.ent, FUNC2(cmd));
	key.cmd = cmd;
	return FUNC1(hashmap, &key, ent, NULL);
}