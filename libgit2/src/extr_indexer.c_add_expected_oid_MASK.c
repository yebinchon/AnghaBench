#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {int /*<<< orphan*/  expected_oids; TYPE_1__* pack; int /*<<< orphan*/  odb; } ;
typedef  TYPE_2__ git_indexer ;
struct TYPE_4__ {int /*<<< orphan*/  idx_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(git_indexer *idx, const git_oid *oid)
{
	/*
	 * If we know about that object because it is stored in our ODB or
	 * because we have already processed it as part of our pack file, we do
	 * not have to expect it.
	 */
	if ((!idx->odb || !FUNC2(idx->odb, oid)) &&
	    !FUNC4(idx->pack->idx_cache, oid) &&
	    !FUNC4(idx->expected_oids, oid)) {
		    git_oid *dup = FUNC1(sizeof(*oid));
		    FUNC0(dup);
		    FUNC3(dup, oid);
		    return FUNC5(idx->expected_oids, dup, dup);
	}

	return 0;
}