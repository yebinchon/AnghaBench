
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parsed_partitions {int limit; int pp_buf; TYPE_2__* bdev; TYPE_1__* parts; } ;
struct mac_partition {scalar_t__ name; scalar_t__ type; scalar_t__ processor; int status; int block_count; int start_block; int signature; int map_count; } ;
struct mac_driver_desc {int block_size; int signature; } ;
struct TYPE_4__ {int bd_dev; } ;
struct TYPE_3__ {int flags; } ;
typedef int Sector ;


 int ADDPART_FLAG_RAID ;
 int DISK_MAX_PARTS ;
 unsigned int MAC_DRIVER_MAGIC ;
 unsigned int MAC_PARTITION_MAGIC ;
 unsigned int MAC_STATUS_BOOTABLE ;
 int PAGE_SIZE ;
 unsigned int be16_to_cpu (int ) ;
 unsigned int be32_to_cpu (int ) ;
 int mac_fix_string (scalar_t__,int) ;
 scalar_t__ machine_is (int ) ;
 int note_bootable_part (int ,int,int) ;
 int powermac ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int,unsigned int,unsigned int) ;
 void* read_part_sector (struct parsed_partitions*,int,int *) ;
 unsigned int round_down (unsigned int,int) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 int strlcat (int ,char*,int ) ;
 int strlen (scalar_t__) ;
 scalar_t__ strncasecmp (scalar_t__,char*,int) ;

int mac_partition(struct parsed_partitions *state)
{
 Sector sect;
 unsigned char *data;
 int slot, blocks_in_map;
 unsigned secsize, datasize, partoffset;




 struct mac_partition *part;
 struct mac_driver_desc *md;


 md = read_part_sector(state, 0, &sect);
 if (!md)
  return -1;
 if (be16_to_cpu(md->signature) != MAC_DRIVER_MAGIC) {
  put_dev_sector(sect);
  return 0;
 }
 secsize = be16_to_cpu(md->block_size);
 put_dev_sector(sect);
 datasize = round_down(secsize, 512);
 data = read_part_sector(state, datasize / 512, &sect);
 if (!data)
  return -1;
 partoffset = secsize % 512;
 if (partoffset + sizeof(*part) > datasize)
  return -1;
 part = (struct mac_partition *) (data + partoffset);
 if (be16_to_cpu(part->signature) != MAC_PARTITION_MAGIC) {
  put_dev_sector(sect);
  return 0;
 }
 blocks_in_map = be32_to_cpu(part->map_count);
 if (blocks_in_map < 0 || blocks_in_map >= DISK_MAX_PARTS) {
  put_dev_sector(sect);
  return 0;
 }

 if (blocks_in_map >= state->limit)
  blocks_in_map = state->limit - 1;

 strlcat(state->pp_buf, " [mac]", PAGE_SIZE);
 for (slot = 1; slot <= blocks_in_map; ++slot) {
  int pos = slot * secsize;
  put_dev_sector(sect);
  data = read_part_sector(state, pos/512, &sect);
  if (!data)
   return -1;
  part = (struct mac_partition *) (data + pos%512);
  if (be16_to_cpu(part->signature) != MAC_PARTITION_MAGIC)
   break;
  put_partition(state, slot,
   be32_to_cpu(part->start_block) * (secsize/512),
   be32_to_cpu(part->block_count) * (secsize/512));

  if (!strncasecmp(part->type, "Linux_RAID", 10))
   state->parts[slot].flags = ADDPART_FLAG_RAID;
 }






 put_dev_sector(sect);
 strlcat(state->pp_buf, "\n", PAGE_SIZE);
 return 1;
}
