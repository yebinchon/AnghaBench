#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_6__ {int* mode; int /*<<< orphan*/ * oid; } ;
typedef  TYPE_1__ git_index_reuc_entry ;
struct TYPE_7__ {int /*<<< orphan*/  path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
	git_index *index,
	size_t idx,
	const git_index_entry *entry)
{
	const git_index_reuc_entry *reuc;
	int mode[3] = { 0, 0, 0 };
	git_oid const *oid[3] = { NULL, NULL, NULL };
	size_t i;

	if (!FUNC0(*entry))
		return 0;

	if ((reuc = FUNC2(index, entry->path)) != NULL) {
		for (i = 0; i < 3; i++) {
			mode[i] = reuc->mode[i];
			oid[i] = &reuc->oid[i];
		}
	}

	mode[idx] = entry->mode;
	oid[idx] = &entry->id;

	return FUNC1(index, entry->path,
		mode[0], oid[0], mode[1], oid[1], mode[2], oid[2]);
}