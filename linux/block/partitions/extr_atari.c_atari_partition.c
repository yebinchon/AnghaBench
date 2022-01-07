
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct rootsector {struct partition_info* icdpart; struct partition_info* part; } ;
struct partition_info {int flg; int siz; int st; int id; } ;
struct parsed_partitions {int limit; int pp_buf; TYPE_2__* bdev; } ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {int i_size; } ;
typedef int Sector ;


 scalar_t__ OK_id (int ) ;
 int PAGE_SIZE ;
 int VALID_PARTITION (struct partition_info*,int) ;
 int bdev_logical_block_size (TYPE_2__*) ;
 int be32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int printk (char*,...) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int,int,int) ;
 struct rootsector* read_part_sector (struct parsed_partitions*,int,int *) ;
 int strlcat (int ,char*,int ) ;

int atari_partition(struct parsed_partitions *state)
{
 Sector sect;
 struct rootsector *rs;
 struct partition_info *pi;
 u32 extensect;
 u32 hd_size;
 int slot;
 if (bdev_logical_block_size(state->bdev) != 512)
  return 0;

 rs = read_part_sector(state, 0, &sect);
 if (!rs)
  return -1;


 hd_size = state->bdev->bd_inode->i_size >> 9;
 if (!VALID_PARTITION(&rs->part[0], hd_size) &&
     !VALID_PARTITION(&rs->part[1], hd_size) &&
     !VALID_PARTITION(&rs->part[2], hd_size) &&
     !VALID_PARTITION(&rs->part[3], hd_size)) {





  put_dev_sector(sect);
  return 0;
 }

 pi = &rs->part[0];
 strlcat(state->pp_buf, " AHDI", PAGE_SIZE);
 for (slot = 1; pi < &rs->part[4] && slot < state->limit; slot++, pi++) {
  struct rootsector *xrs;
  Sector sect2;
  ulong partsect;

  if ( !(pi->flg & 1) )
   continue;

  if (memcmp (pi->id, "XGM", 3) != 0) {

   put_partition (state, slot, be32_to_cpu(pi->st),
     be32_to_cpu(pi->siz));
   continue;
  }




  strlcat(state->pp_buf, " XGM<", PAGE_SIZE);
  partsect = extensect = be32_to_cpu(pi->st);
  while (1) {
   xrs = read_part_sector(state, partsect, &sect2);
   if (!xrs) {
    printk (" block %ld read failed\n", partsect);
    put_dev_sector(sect);
    return -1;
   }


   if (!(xrs->part[0].flg & 1)) {
    printk( "\nFirst sub-partition in extended partition is not valid!\n" );
    put_dev_sector(sect2);
    break;
   }

   put_partition(state, slot,
       partsect + be32_to_cpu(xrs->part[0].st),
       be32_to_cpu(xrs->part[0].siz));

   if (!(xrs->part[1].flg & 1)) {

    put_dev_sector(sect2);
    break;
   }
   if (memcmp( xrs->part[1].id, "XGM", 3 ) != 0) {
    printk("\nID of extended partition is not XGM!\n");
    put_dev_sector(sect2);
    break;
   }

   partsect = be32_to_cpu(xrs->part[1].st) + extensect;
   put_dev_sector(sect2);
   if (++slot == state->limit) {
    printk( "\nMaximum number of partitions reached!\n" );
    break;
   }
  }
  strlcat(state->pp_buf, " >", PAGE_SIZE);
 }
 put_dev_sector(sect);

 strlcat(state->pp_buf, "\n", PAGE_SIZE);

 return 1;
}
