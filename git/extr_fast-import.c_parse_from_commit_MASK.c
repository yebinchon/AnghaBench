#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* versions; } ;
struct branch {TYPE_2__ branch_tree; int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {int hexsz; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* the_hash_algo ; 

__attribute__((used)) static void FUNC5(struct branch *b, char *buf, unsigned long size)
{
	if (!buf || size < the_hash_algo->hexsz + 6)
		FUNC0("Not a valid commit: %s", FUNC3(&b->oid));
	if (FUNC2("tree ", buf, 5)
		|| FUNC1(buf + 5, &b->branch_tree.versions[1].oid))
		FUNC0("The commit %s is corrupt", FUNC3(&b->oid));
	FUNC4(&b->branch_tree.versions[0].oid,
	       &b->branch_tree.versions[1].oid);
}