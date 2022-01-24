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
typedef  int /*<<< orphan*/  u8 ;
struct vmdb {int vblk_offset; int vblk_size; int last_vblk_seq; } ;
struct tocblock {int bitmap1_size; } ;
struct parsed_partitions {int dummy; } ;
struct ldmdb {struct tocblock toc; struct vmdb vm; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OFF_VMDB ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vmdb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct parsed_partitions*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct parsed_partitions *state,
			      unsigned long base, struct ldmdb *ldb)
{
	Sector sect;
	u8 *data;
	bool result = false;
	struct vmdb *vm;
	struct tocblock *toc;

	FUNC0 (!state || !ldb);

	vm  = &ldb->vm;
	toc = &ldb->toc;

	data = FUNC6(state, base + OFF_VMDB, &sect);
	if (!data) {
		FUNC2 ("Disk read failed.");
		return false;
	}

	if (!FUNC4 (data, vm))
		goto out;				/* Already logged */

	/* Are there uncommitted transactions? */
	if (FUNC1(data + 0x10) != 0x01) {
		FUNC2 ("Database is not in a consistent state.  Aborting.");
		goto out;
	}

	if (vm->vblk_offset != 512)
		FUNC3 ("VBLKs start at offset 0x%04x.", vm->vblk_offset);

	/*
	 * The last_vblkd_seq can be before the end of the vmdb, just make sure
	 * it is not out of bounds.
	 */
	if ((vm->vblk_size * vm->last_vblk_seq) > (toc->bitmap1_size << 9)) {
		FUNC2 ("VMDB exceeds allowed size specified by TOCBLOCK.  "
				"Database is corrupt.  Aborting.");
		goto out;
	}

	result = true;
out:
	FUNC5 (sect);
	return result;
}