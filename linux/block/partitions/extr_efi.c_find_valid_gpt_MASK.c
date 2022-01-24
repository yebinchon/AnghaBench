#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct parsed_partitions {TYPE_4__* bdev; } ;
typedef  int sector_t ;
struct TYPE_14__ {int /*<<< orphan*/  alternate_lba; } ;
typedef  TYPE_1__ legacy_mbr ;
typedef  TYPE_1__ gpt_header ;
typedef  TYPE_1__ gpt_entry ;
struct TYPE_15__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPT_MBR_PROTECTIVE ; 
 int /*<<< orphan*/  GPT_PRIMARY_PARTITION_TABLE_LBA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ force_gpt ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct parsed_partitions*,int /*<<< orphan*/ ,TYPE_1__**,TYPE_1__**) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct parsed_partitions*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct parsed_partitions *state, gpt_header **gpt,
			  gpt_entry **ptes)
{
	int good_pgpt = 0, good_agpt = 0, good_pmbr = 0;
	gpt_header *pgpt = NULL, *agpt = NULL;
	gpt_entry *pptes = NULL, *aptes = NULL;
	legacy_mbr *legacymbr;
	sector_t total_sectors = FUNC1(state->bdev->bd_inode) >> 9;
	u64 lastlba;

	if (!ptes)
		return 0;

	lastlba = FUNC6(state->bdev);
        if (!force_gpt) {
		/* This will be added to the EFI Spec. per Intel after v1.02. */
		legacymbr = FUNC5(sizeof(*legacymbr), GFP_KERNEL);
		if (!legacymbr)
			goto fail;

		FUNC10(state, 0, (u8 *)legacymbr, sizeof(*legacymbr));
		good_pmbr = FUNC3(legacymbr, total_sectors);
		FUNC4(legacymbr);

		if (!good_pmbr)
			goto fail;

		FUNC8("Device has a %s MBR\n",
			 good_pmbr == GPT_MBR_PROTECTIVE ?
						"protective" : "hybrid");
	}

	good_pgpt = FUNC2(state, GPT_PRIMARY_PARTITION_TABLE_LBA,
				 &pgpt, &pptes);
        if (good_pgpt)
		good_agpt = FUNC2(state,
					 FUNC7(pgpt->alternate_lba),
					 &agpt, &aptes);
        if (!good_agpt && force_gpt)
                good_agpt = FUNC2(state, lastlba, &agpt, &aptes);

        /* The obviously unsuccessful case */
        if (!good_pgpt && !good_agpt)
                goto fail;

        FUNC0(pgpt, agpt, lastlba);

        /* The good cases */
        if (good_pgpt) {
                *gpt  = pgpt;
                *ptes = pptes;
                FUNC4(agpt);
                FUNC4(aptes);
		if (!good_agpt)
                        FUNC9("Alternate GPT is invalid, using primary GPT.\n");
                return 1;
        }
        else if (good_agpt) {
                *gpt  = agpt;
                *ptes = aptes;
                FUNC4(pgpt);
                FUNC4(pptes);
		FUNC9("Primary GPT is invalid, using alternate GPT.\n");
                return 1;
        }

 fail:
        FUNC4(pgpt);
        FUNC4(agpt);
        FUNC4(pptes);
        FUNC4(aptes);
        *gpt = NULL;
        *ptes = NULL;
        return 0;
}