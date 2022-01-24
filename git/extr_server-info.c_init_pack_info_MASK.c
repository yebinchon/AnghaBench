#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct packed_git {int /*<<< orphan*/  pack_name; int /*<<< orphan*/  pack_local; struct packed_git* next; } ;
struct pack_info {int dummy; } ;
struct TYPE_5__ {int old_num; int new_num; struct packed_git* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct packed_git* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__** info ; 
 int num_pack ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 TYPE_1__* FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(const char *infofile, int force)
{
	struct packed_git *p;
	int stale;
	int i;
	size_t alloc = 0;

	for (p = FUNC3(the_repository); p; p = p->next) {
		/* we ignore things on alternate path since they are
		 * not available to the pullers in general.
		 */
		if (!p->pack_local || !FUNC2(p->pack_name))
			continue;

		i = num_pack++;
		FUNC0(info, num_pack, alloc);
		info[i] = FUNC5(1, sizeof(struct pack_info));
		info[i]->p = p;
		info[i]->old_num = -1;
	}

	if (infofile && !force)
		stale = FUNC4(infofile);
	else
		stale = 1;

	for (i = 0; i < num_pack; i++)
		if (stale)
			info[i]->old_num = -1;

	/* renumber them */
	FUNC1(info, num_pack, compare_info);
	for (i = 0; i < num_pack; i++)
		info[i]->new_num = i;
}