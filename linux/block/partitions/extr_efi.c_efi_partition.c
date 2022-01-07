
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u8 ;
typedef unsigned int u64 ;
typedef int u32 ;
struct partition_meta_info {int* volname; int uuid; } ;
struct parsed_partitions {int limit; int pp_buf; TYPE_1__* parts; int bdev; } ;
struct TYPE_9__ {int* partition_name; int unique_partition_guid; int partition_type_guid; int starting_lba; int ending_lba; int num_partition_entries; } ;
typedef TYPE_2__ gpt_header ;
typedef TYPE_2__ gpt_entry ;
struct TYPE_8__ {int has_info; struct partition_meta_info info; int flags; } ;


 int ADDPART_FLAG_RAID ;
 scalar_t__ ARRAY_SIZE (int*) ;
 int PAGE_SIZE ;
 int PARTITION_LINUX_RAID_GUID ;
 int bdev_logical_block_size (int ) ;
 int efi_guid_to_str (int *,int ) ;
 int efi_guidcmp (int ,int ) ;
 int find_valid_gpt (struct parsed_partitions*,TYPE_2__**,TYPE_2__**) ;
 int is_pte_valid (TYPE_2__*,int ) ;
 int isprint (char) ;
 int kfree (TYPE_2__*) ;
 int last_lba (int ) ;
 int le32_to_cpu (int ) ;
 unsigned int le64_to_cpu (int ) ;
 unsigned int min (scalar_t__,scalar_t__) ;
 int pr_debug (char*) ;
 int put_partition (struct parsed_partitions*,int,unsigned int,unsigned int) ;
 int strlcat (int ,char*,int ) ;

int efi_partition(struct parsed_partitions *state)
{
 gpt_header *gpt = ((void*)0);
 gpt_entry *ptes = ((void*)0);
 u32 i;
 unsigned ssz = bdev_logical_block_size(state->bdev) / 512;

 if (!find_valid_gpt(state, &gpt, &ptes) || !gpt || !ptes) {
  kfree(gpt);
  kfree(ptes);
  return 0;
 }

 pr_debug("GUID Partition Table is valid!  Yea!\n");

 for (i = 0; i < le32_to_cpu(gpt->num_partition_entries) && i < state->limit-1; i++) {
  struct partition_meta_info *info;
  unsigned label_count = 0;
  unsigned label_max;
  u64 start = le64_to_cpu(ptes[i].starting_lba);
  u64 size = le64_to_cpu(ptes[i].ending_lba) -
      le64_to_cpu(ptes[i].starting_lba) + 1ULL;

  if (!is_pte_valid(&ptes[i], last_lba(state->bdev)))
   continue;

  put_partition(state, i+1, start * ssz, size * ssz);


  if (!efi_guidcmp(ptes[i].partition_type_guid, PARTITION_LINUX_RAID_GUID))
   state->parts[i + 1].flags = ADDPART_FLAG_RAID;

  info = &state->parts[i + 1].info;
  efi_guid_to_str(&ptes[i].unique_partition_guid, info->uuid);


  label_max = min(ARRAY_SIZE(info->volname) - 1,
    ARRAY_SIZE(ptes[i].partition_name));
  info->volname[label_max] = 0;
  while (label_count < label_max) {
   u8 c = ptes[i].partition_name[label_count] & 0xff;
   if (c && !isprint(c))
    c = '!';
   info->volname[label_count] = c;
   label_count++;
  }
  state->parts[i + 1].has_info = 1;
 }
 kfree(ptes);
 kfree(gpt);
 strlcat(state->pp_buf, "\n", PAGE_SIZE);
 return 1;
}
