#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pack_list {int nr; TYPE_1__* info; int /*<<< orphan*/  alloc; scalar_t__ m; int /*<<< orphan*/  pack_paths_checked; int /*<<< orphan*/  progress; } ;
struct TYPE_2__ {size_t orig_pack_int_id; scalar_t__ expired; int /*<<< orphan*/  pack_name; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (scalar_t__,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void FUNC11(const char *full_path, size_t full_path_len,
			     const char *file_name, void *data)
{
	struct pack_list *packs = (struct pack_list *)data;

	if (FUNC6(file_name, ".idx")) {
		FUNC5(packs->progress, ++packs->pack_paths_checked);
		if (packs->m && FUNC7(packs->m, file_name))
			return;

		FUNC0(packs->info, packs->nr + 1, packs->alloc);

		packs->info[packs->nr].p = FUNC3(full_path,
							  full_path_len,
							  0);

		if (!packs->info[packs->nr].p) {
			FUNC9(FUNC2("failed to add packfile '%s'"),
				full_path);
			return;
		}

		if (FUNC8(packs->info[packs->nr].p)) {
			FUNC9(FUNC2("failed to open pack-index '%s'"),
				full_path);
			FUNC4(packs->info[packs->nr].p);
			FUNC1(packs->info[packs->nr].p);
			return;
		}

		packs->info[packs->nr].pack_name = FUNC10(file_name);
		packs->info[packs->nr].orig_pack_int_id = packs->nr;
		packs->info[packs->nr].expired = 0;
		packs->nr++;
	}
}