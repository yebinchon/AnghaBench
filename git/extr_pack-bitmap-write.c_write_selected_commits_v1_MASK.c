#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct pack_idx_entry {int dummy; } ;
struct hashfile {int dummy; } ;
struct bitmapped_commit {int /*<<< orphan*/  write_as; int /*<<< orphan*/  flags; int /*<<< orphan*/  xor_offset; TYPE_2__* commit; } ;
struct TYPE_8__ {int selected_nr; struct bitmapped_commit* selected; } ;
struct TYPE_7__ {int /*<<< orphan*/  hash; } ;
struct TYPE_5__ {TYPE_3__ oid; } ;
struct TYPE_6__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hashfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hashfile*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hashfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sha1_access ; 
 int FUNC4 (int /*<<< orphan*/ ,struct pack_idx_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ writer ; 

__attribute__((used)) static void FUNC5(struct hashfile *f,
				      struct pack_idx_entry **index,
				      uint32_t index_nr)
{
	int i;

	for (i = 0; i < writer.selected_nr; ++i) {
		struct bitmapped_commit *stored = &writer.selected[i];

		int commit_pos =
			FUNC4(stored->commit->object.oid.hash, index, index_nr, sha1_access);

		if (commit_pos < 0)
			FUNC0("trying to write commit not in index");

		FUNC2(f, commit_pos);
		FUNC3(f, stored->xor_offset);
		FUNC3(f, stored->flags);

		FUNC1(f, stored->write_as);
	}
}