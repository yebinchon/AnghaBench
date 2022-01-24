#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* versions; } ;
struct branch {int /*<<< orphan*/  pack_id; scalar_t__ active; scalar_t__ num_notes; TYPE_2__ branch_tree; struct branch* table_next_branch; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {void* mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PACK_ID ; 
 int /*<<< orphan*/  REFNAME_ALLOW_ONELEVEL ; 
 void* S_IFDIR ; 
 int /*<<< orphan*/  branch_count ; 
 struct branch** branch_table ; 
 unsigned int branch_table_sz ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  fi_mem_pool ; 
 unsigned int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct branch* FUNC3 (char const*) ; 
 struct branch* FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static struct branch *FUNC7(const char *name)
{
	unsigned int hc = FUNC2(name, FUNC6(name)) % branch_table_sz;
	struct branch *b = FUNC3(name);

	if (b)
		FUNC1("Invalid attempt to create duplicate branch: %s", name);
	if (FUNC0(name, REFNAME_ALLOW_ONELEVEL))
		FUNC1("Branch name doesn't conform to GIT standards: %s", name);

	b = FUNC4(&fi_mem_pool, 1, sizeof(struct branch));
	b->name = FUNC5(name);
	b->table_next_branch = branch_table[hc];
	b->branch_tree.versions[0].mode = S_IFDIR;
	b->branch_tree.versions[1].mode = S_IFDIR;
	b->num_notes = 0;
	b->active = 0;
	b->pack_id = MAX_PACK_ID;
	branch_table[hc] = b;
	branch_count++;
	return b;
}