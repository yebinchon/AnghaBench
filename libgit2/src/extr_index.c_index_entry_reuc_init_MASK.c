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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {int* mode; int /*<<< orphan*/ * oid; } ;
typedef  TYPE_1__ git_index_reuc_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(git_index_reuc_entry **reuc_out,
	const char *path,
	int ancestor_mode, const git_oid *ancestor_oid,
	int our_mode, const git_oid *our_oid,
	int their_mode, const git_oid *their_oid)
{
	git_index_reuc_entry *reuc = NULL;

	FUNC1(reuc_out && path);

	*reuc_out = reuc = FUNC3(path);
	FUNC0(reuc);

	if ((reuc->mode[0] = ancestor_mode) > 0) {
		FUNC1(ancestor_oid);
		FUNC2(&reuc->oid[0], ancestor_oid);
	}

	if ((reuc->mode[1] = our_mode) > 0) {
		FUNC1(our_oid);
		FUNC2(&reuc->oid[1], our_oid);
	}

	if ((reuc->mode[2] = their_mode) > 0) {
		FUNC1(their_oid);
		FUNC2(&reuc->oid[2], their_oid);
	}

	return 0;
}