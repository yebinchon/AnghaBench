
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct partition {int boot_ind; } ;
struct parsed_partitions {int next; int pp_buf; TYPE_1__* parts; int bdev; } ;
struct fat_boot_sector {int media; scalar_t__ fats; scalar_t__ reserved; } ;
typedef int sector_t ;
typedef int __le32 ;
struct TYPE_4__ {unsigned char id; int (* parse ) (struct parsed_partitions*,int,int,int) ;} ;
struct TYPE_3__ {int flags; } ;
typedef int Sector ;


 int ADDPART_FLAG_RAID ;
 unsigned char DM6_PARTITION ;
 unsigned char EFI_PMBR_OSTYPE_EFI_GPT ;
 unsigned char EZD_PARTITION ;
 unsigned char LINUX_RAID_PARTITION ;
 int PAGE_SIZE ;
 unsigned char SYS_IND (struct partition*) ;
 scalar_t__ aix_magic_present (struct parsed_partitions*,unsigned char*) ;
 int aix_partition (struct parsed_partitions*) ;
 int bdev_logical_block_size (int ) ;
 scalar_t__ fat_valid_media (int ) ;
 scalar_t__ is_extended_partition (struct partition*) ;
 int le32_to_cpup (int *) ;
 int max (int,int) ;
 int min (int,int ) ;
 int msdos_magic_present (unsigned char*) ;
 int nr_sects (struct partition*) ;
 int parse_extended (struct parsed_partitions*,int,int,int ) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int,int,int) ;
 unsigned char* read_part_sector (struct parsed_partitions*,int ,int *) ;
 int set_info (struct parsed_partitions*,int,int ) ;
 int start_sect (struct partition*) ;
 int strlcat (int ,char*,int ) ;
 int stub1 (struct parsed_partitions*,int,int,int) ;
 TYPE_2__* subtypes ;

int msdos_partition(struct parsed_partitions *state)
{
 sector_t sector_size = bdev_logical_block_size(state->bdev) / 512;
 Sector sect;
 unsigned char *data;
 struct partition *p;
 struct fat_boot_sector *fb;
 int slot;
 u32 disksig;

 data = read_part_sector(state, 0, &sect);
 if (!data)
  return -1;





 if (aix_magic_present(state, data)) {
  put_dev_sector(sect);



  strlcat(state->pp_buf, " [AIX]", PAGE_SIZE);
  return 0;

 }

 if (!msdos_magic_present(data + 510)) {
  put_dev_sector(sect);
  return 0;
 }







 p = (struct partition *) (data + 0x1be);
 for (slot = 1; slot <= 4; slot++, p++) {
  if (p->boot_ind != 0 && p->boot_ind != 0x80) {





   fb = (struct fat_boot_sector *) data;
   if (slot == 1 && fb->reserved && fb->fats
    && fat_valid_media(fb->media)) {
    strlcat(state->pp_buf, "\n", PAGE_SIZE);
    put_dev_sector(sect);
    return 1;
   } else {
    put_dev_sector(sect);
    return 0;
   }
  }
 }
 p = (struct partition *) (data + 0x1be);

 disksig = le32_to_cpup((__le32 *)(data + 0x1b8));







 state->next = 5;
 for (slot = 1 ; slot <= 4 ; slot++, p++) {
  sector_t start = start_sect(p)*sector_size;
  sector_t size = nr_sects(p)*sector_size;

  if (!size)
   continue;
  if (is_extended_partition(p)) {






   sector_t n = 2;

   n = min(size, max(sector_size, n));
   put_partition(state, slot, start, n);

   strlcat(state->pp_buf, " <", PAGE_SIZE);
   parse_extended(state, start, size, disksig);
   strlcat(state->pp_buf, " >", PAGE_SIZE);
   continue;
  }
  put_partition(state, slot, start, size);
  set_info(state, slot, disksig);
  if (SYS_IND(p) == LINUX_RAID_PARTITION)
   state->parts[slot].flags = ADDPART_FLAG_RAID;
  if (SYS_IND(p) == DM6_PARTITION)
   strlcat(state->pp_buf, "[DM]", PAGE_SIZE);
  if (SYS_IND(p) == EZD_PARTITION)
   strlcat(state->pp_buf, "[EZD]", PAGE_SIZE);
 }

 strlcat(state->pp_buf, "\n", PAGE_SIZE);


 p = (struct partition *) (0x1be + data);
 for (slot = 1 ; slot <= 4 ; slot++, p++) {
  unsigned char id = SYS_IND(p);
  int n;

  if (!nr_sects(p))
   continue;

  for (n = 0; subtypes[n].parse && id != subtypes[n].id; n++)
   ;

  if (!subtypes[n].parse)
   continue;
  subtypes[n].parse(state, start_sect(p) * sector_size,
      nr_sects(p) * sector_size, slot);
 }
 put_dev_sector(sect);
 return 1;
}
