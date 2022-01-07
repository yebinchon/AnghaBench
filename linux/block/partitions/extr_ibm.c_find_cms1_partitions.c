
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; int disk_offset; int block_count; } ;
union label_t {TYPE_1__ cms; } ;
typedef int tmp ;
struct parsed_partitions {int pp_buf; } ;
struct hd_geometry {int dummy; } ;
typedef int sector_t ;
typedef int loff_t ;


 int PAGE_SIZE ;
 int put_partition (struct parsed_partitions*,int,int,int) ;
 int snprintf (char*,int,char*,char*) ;
 int strlcat (int ,char*,int ) ;

__attribute__((used)) static int find_cms1_partitions(struct parsed_partitions *state,
    struct hd_geometry *geo,
    int blocksize,
    char name[],
    union label_t *label,
    sector_t labelsect)
{
 loff_t offset, size;
 char tmp[64];
 int secperblk;




 blocksize = label->cms.block_size;
 secperblk = blocksize >> 9;
 if (label->cms.disk_offset != 0) {
  snprintf(tmp, sizeof(tmp), "CMS1/%8s(MDSK):", name);
  strlcat(state->pp_buf, tmp, PAGE_SIZE);

  offset = label->cms.disk_offset * secperblk;
  size = (label->cms.block_count - 1) * secperblk;
 } else {
  snprintf(tmp, sizeof(tmp), "CMS1/%8s:", name);
  strlcat(state->pp_buf, tmp, PAGE_SIZE);







  if (labelsect == 1)
   offset = 2 * secperblk;
  else
   offset = labelsect + secperblk;
  size = label->cms.block_count * secperblk;
 }

 put_partition(state, 1, offset, size-offset);
 strlcat(state->pp_buf, "\n", PAGE_SIZE);
 return 1;
}
