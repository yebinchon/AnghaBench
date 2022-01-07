
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vtoc; } ;
union label_t {TYPE_1__ vol; } ;
typedef int tmp ;
struct TYPE_4__ {int ulimit; int llimit; } ;
struct vtoc_format1_label {scalar_t__ DS1FMTID; TYPE_2__ DS1EXT1; } ;
struct parsed_partitions {int limit; int pp_buf; } ;
struct hd_geometry {int sectors; } ;
typedef int sector_t ;
typedef int loff_t ;
typedef int Sector ;


 int PAGE_SIZE ;
 scalar_t__* _ascebc ;
 int cchh2blk (int *,struct hd_geometry*) ;
 int cchhb2blk (int *,struct hd_geometry*) ;
 int memcpy (struct vtoc_format1_label*,unsigned char*,int) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int,int,int) ;
 unsigned char* read_part_sector (struct parsed_partitions*,int,int *) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcat (int ,char*,int ) ;

__attribute__((used)) static int find_vol1_partitions(struct parsed_partitions *state,
    struct hd_geometry *geo,
    int blocksize,
    char name[],
    union label_t *label)
{
 sector_t blk;
 int counter;
 char tmp[64];
 Sector sect;
 unsigned char *data;
 loff_t offset, size;
 struct vtoc_format1_label f1;
 int secperblk;

 snprintf(tmp, sizeof(tmp), "VOL1/%8s:", name);
 strlcat(state->pp_buf, tmp, PAGE_SIZE);




 secperblk = blocksize >> 9;
 blk = cchhb2blk(&label->vol.vtoc, geo) + 1;
 counter = 0;
 data = read_part_sector(state, blk * secperblk, &sect);
 while (data != ((void*)0)) {
  memcpy(&f1, data, sizeof(struct vtoc_format1_label));
  put_dev_sector(sect);

  if (f1.DS1FMTID == _ascebc['4']
      || f1.DS1FMTID == _ascebc['5']
      || f1.DS1FMTID == _ascebc['7']
      || f1.DS1FMTID == _ascebc['9']) {
   blk++;
   data = read_part_sector(state, blk * secperblk, &sect);
   continue;
  }

  if (f1.DS1FMTID != _ascebc['1'] &&
      f1.DS1FMTID != _ascebc['8'])
   break;

  offset = cchh2blk(&f1.DS1EXT1.llimit, geo);
  size = cchh2blk(&f1.DS1EXT1.ulimit, geo) -
   offset + geo->sectors;
  offset *= secperblk;
  size *= secperblk;
  if (counter >= state->limit)
   break;
  put_partition(state, counter + 1, offset, size);
  counter++;
  blk++;
  data = read_part_sector(state, blk * secperblk, &sect);
 }
 strlcat(state->pp_buf, "\n", PAGE_SIZE);

 if (!data)
  return -1;

 return 1;
}
