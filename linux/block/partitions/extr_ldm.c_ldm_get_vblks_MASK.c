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
typedef  int /*<<< orphan*/  u8 ;
struct parsed_partitions {int dummy; } ;
struct TYPE_2__ {int vblk_size; int vblk_offset; int last_vblk_seq; } ;
struct ldmdb {TYPE_1__ vm; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAGIC_VBLK ; 
 scalar_t__ OFF_VMDB ; 
 int /*<<< orphan*/  frags ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ldmdb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,struct ldmdb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct parsed_partitions*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(struct parsed_partitions *state, unsigned long base,
			  struct ldmdb *ldb)
{
	int size, perbuf, skip, finish, s, v, recs;
	u8 *data = NULL;
	Sector sect;
	bool result = false;
	FUNC1 (frags);

	FUNC0(!state || !ldb);

	size   = ldb->vm.vblk_size;
	perbuf = 512 / size;
	skip   = ldb->vm.vblk_offset >> 9;		/* Bytes to sectors */
	finish = (size * ldb->vm.last_vblk_seq) >> 9;

	for (s = skip; s < finish; s++) {		/* For each sector */
		data = FUNC11(state, base + OFF_VMDB + s, &sect);
		if (!data) {
			FUNC4 ("Disk read failed.");
			goto out;
		}

		for (v = 0; v < perbuf; v++, data+=size) {  /* For each vblk */
			if (MAGIC_VBLK != FUNC3(data)) {
				FUNC5 ("Expected to find a VBLK.");
				goto out;
			}

			recs = FUNC2(data + 0x0E);	/* Number of records */
			if (recs == 1) {
				if (!FUNC9 (data, size, ldb))
					goto out;	/* Already logged */
			} else if (recs > 1) {
				if (!FUNC6 (data, size, &frags))
					goto out;	/* Already logged */
			}
			/* else Record is not in use, ignore it. */
		}
		FUNC10 (sect);
		data = NULL;
	}

	result = FUNC7 (&frags, ldb);	/* Failures, already logged */
out:
	if (data)
		FUNC10 (sect);
	FUNC8 (&frags);

	return result;
}