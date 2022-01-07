
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct parsed_partitions {TYPE_4__* bdev; } ;
typedef int sector_t ;
struct TYPE_14__ {int alternate_lba; } ;
typedef TYPE_1__ legacy_mbr ;
typedef TYPE_1__ gpt_header ;
typedef TYPE_1__ gpt_entry ;
struct TYPE_15__ {int bd_inode; } ;


 int GFP_KERNEL ;
 int GPT_MBR_PROTECTIVE ;
 int GPT_PRIMARY_PARTITION_TABLE_LBA ;
 int compare_gpts (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ force_gpt ;
 int i_size_read (int ) ;
 int is_gpt_valid (struct parsed_partitions*,int ,TYPE_1__**,TYPE_1__**) ;
 int is_pmbr_valid (TYPE_1__*,int) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int last_lba (TYPE_4__*) ;
 int le64_to_cpu (int ) ;
 int pr_debug (char*,char*) ;
 int pr_warn (char*) ;
 int read_lba (struct parsed_partitions*,int ,int *,int) ;

__attribute__((used)) static int find_valid_gpt(struct parsed_partitions *state, gpt_header **gpt,
     gpt_entry **ptes)
{
 int good_pgpt = 0, good_agpt = 0, good_pmbr = 0;
 gpt_header *pgpt = ((void*)0), *agpt = ((void*)0);
 gpt_entry *pptes = ((void*)0), *aptes = ((void*)0);
 legacy_mbr *legacymbr;
 sector_t total_sectors = i_size_read(state->bdev->bd_inode) >> 9;
 u64 lastlba;

 if (!ptes)
  return 0;

 lastlba = last_lba(state->bdev);
        if (!force_gpt) {

  legacymbr = kzalloc(sizeof(*legacymbr), GFP_KERNEL);
  if (!legacymbr)
   goto fail;

  read_lba(state, 0, (u8 *)legacymbr, sizeof(*legacymbr));
  good_pmbr = is_pmbr_valid(legacymbr, total_sectors);
  kfree(legacymbr);

  if (!good_pmbr)
   goto fail;

  pr_debug("Device has a %s MBR\n",
    good_pmbr == GPT_MBR_PROTECTIVE ?
      "protective" : "hybrid");
 }

 good_pgpt = is_gpt_valid(state, GPT_PRIMARY_PARTITION_TABLE_LBA,
     &pgpt, &pptes);
        if (good_pgpt)
  good_agpt = is_gpt_valid(state,
      le64_to_cpu(pgpt->alternate_lba),
      &agpt, &aptes);
        if (!good_agpt && force_gpt)
                good_agpt = is_gpt_valid(state, lastlba, &agpt, &aptes);


        if (!good_pgpt && !good_agpt)
                goto fail;

        compare_gpts(pgpt, agpt, lastlba);


        if (good_pgpt) {
                *gpt = pgpt;
                *ptes = pptes;
                kfree(agpt);
                kfree(aptes);
  if (!good_agpt)
                        pr_warn("Alternate GPT is invalid, using primary GPT.\n");
                return 1;
        }
        else if (good_agpt) {
                *gpt = agpt;
                *ptes = aptes;
                kfree(pgpt);
                kfree(pptes);
  pr_warn("Primary GPT is invalid, using alternate GPT.\n");
                return 1;
        }

 fail:
        kfree(pgpt);
        kfree(agpt);
        kfree(pptes);
        kfree(aptes);
        *gpt = ((void*)0);
        *ptes = ((void*)0);
        return 0;
}
