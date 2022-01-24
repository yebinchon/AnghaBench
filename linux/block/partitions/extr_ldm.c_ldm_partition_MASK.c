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
struct parsed_partitions {int dummy; } ;
struct TYPE_2__ {unsigned long config_start; } ;
struct ldmdb {int /*<<< orphan*/  v_part; int /*<<< orphan*/  v_comp; int /*<<< orphan*/  v_volu; int /*<<< orphan*/  v_disk; int /*<<< orphan*/  v_dgrp; TYPE_1__ ph; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ldmdb*) ; 
 struct ldmdb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct parsed_partitions*,struct ldmdb*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct parsed_partitions*,unsigned long,struct ldmdb*) ; 
 int /*<<< orphan*/  FUNC9 (struct parsed_partitions*) ; 
 int /*<<< orphan*/  FUNC10 (struct parsed_partitions*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct parsed_partitions*,unsigned long,struct ldmdb*) ; 
 int /*<<< orphan*/  FUNC12 (struct parsed_partitions*,unsigned long,struct ldmdb*) ; 

int FUNC13(struct parsed_partitions *state)
{
	struct ldmdb  *ldb;
	unsigned long base;
	int result = -1;

	FUNC0(!state);

	/* Look for signs of a Dynamic Disk */
	if (!FUNC9(state))
		return 0;

	ldb = FUNC3 (sizeof (*ldb), GFP_KERNEL);
	if (!ldb) {
		FUNC5 ("Out of memory.");
		goto out;
	}

	/* Parse and check privheads. */
	if (!FUNC10(state, &ldb->ph))
		goto out;		/* Already logged */

	/* All further references are relative to base (database start). */
	base = ldb->ph.config_start;

	/* Parse and check tocs and vmdb. */
	if (!FUNC11(state, base, ldb) ||
	    !FUNC12(state, base, ldb))
	    	goto out;		/* Already logged */

	/* Initialize vblk lists in ldmdb struct */
	FUNC1 (&ldb->v_dgrp);
	FUNC1 (&ldb->v_disk);
	FUNC1 (&ldb->v_volu);
	FUNC1 (&ldb->v_comp);
	FUNC1 (&ldb->v_part);

	if (!FUNC8(state, base, ldb)) {
		FUNC5 ("Failed to read the VBLKs from the database.");
		goto cleanup;
	}

	/* Finally, create the data partition devices. */
	if (FUNC4(state, ldb)) {
		FUNC6 ("Parsed LDM database successfully.");
		result = 1;
	}
	/* else Already logged */

cleanup:
	FUNC7 (&ldb->v_dgrp);
	FUNC7 (&ldb->v_disk);
	FUNC7 (&ldb->v_volu);
	FUNC7 (&ldb->v_comp);
	FUNC7 (&ldb->v_part);
out:
	FUNC2 (ldb);
	return result;
}