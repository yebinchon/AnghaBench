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
struct tocblock {scalar_t__ bitmap1_start; scalar_t__ bitmap1_size; scalar_t__ bitmap2_start; scalar_t__ bitmap2_size; } ;
struct privhead {scalar_t__ config_size; } ;
struct parsed_partitions {int dummy; } ;
struct ldmdb {struct tocblock toc; struct privhead ph; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  OFF_TOCB1 131 
#define  OFF_TOCB2 130 
#define  OFF_TOCB3 129 
#define  OFF_TOCB4 128 
 int /*<<< orphan*/  FUNC1 (struct tocblock*) ; 
 struct tocblock* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tocblock*,struct tocblock*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct tocblock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct parsed_partitions*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct parsed_partitions *state,
				   unsigned long base, struct ldmdb *ldb)
{
	static const int off[4] = { OFF_TOCB1, OFF_TOCB2, OFF_TOCB3, OFF_TOCB4};
	struct tocblock *tb[4];
	struct privhead *ph;
	Sector sect;
	u8 *data;
	int i, nr_tbs;
	bool result = false;

	FUNC0(!state || !ldb);
	ph = &ldb->ph;
	tb[0] = &ldb->toc;
	tb[1] = FUNC2(3, sizeof(*tb[1]), GFP_KERNEL);
	if (!tb[1]) {
		FUNC4("Out of memory.");
		goto err;
	}
	tb[2] = (struct tocblock*)((u8*)tb[1] + sizeof(*tb[1]));
	tb[3] = (struct tocblock*)((u8*)tb[2] + sizeof(*tb[2]));
	/*
	 * Try to read and parse all four TOCBLOCKs.
	 *
	 * Windows Vista LDM v2.12 does not always have all four TOCBLOCKs so
	 * skip any that fail as long as we get at least one valid TOCBLOCK.
	 */
	for (nr_tbs = i = 0; i < 4; i++) {
		data = FUNC9(state, base + off[i], &sect);
		if (!data) {
			FUNC6("Disk read failed for TOCBLOCK %d.", i);
			continue;
		}
		if (FUNC7(data, tb[nr_tbs]))
			nr_tbs++;
		FUNC8(sect);
	}
	if (!nr_tbs) {
		FUNC4("Failed to find a valid TOCBLOCK.");
		goto err;
	}
	/* Range check the TOCBLOCK against a privhead. */
	if (((tb[0]->bitmap1_start + tb[0]->bitmap1_size) > ph->config_size) ||
			((tb[0]->bitmap2_start + tb[0]->bitmap2_size) >
			ph->config_size)) {
		FUNC4("The bitmaps are out of range.  Giving up.");
		goto err;
	}
	/* Compare all loaded TOCBLOCKs. */
	for (i = 1; i < nr_tbs; i++) {
		if (!FUNC3(tb[0], tb[i])) {
			FUNC4("TOCBLOCKs 0 and %d do not match.", i);
			goto err;
		}
	}
	FUNC5("Validated %d TOCBLOCKs successfully.", nr_tbs);
	result = true;
err:
	FUNC1(tb[1]);
	return result;
}