
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parsed_partitions {int pp_buf; TYPE_1__* bdev; } ;
struct cmdline_parts {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int bd_disk; } ;


 int BDEVNAME_SIZE ;
 int PAGE_SIZE ;
 int add_part ;
 scalar_t__ bdev_parts ;
 int bdevname (TYPE_1__*,char*) ;
 int * cmdline ;
 struct cmdline_parts* cmdline_parts_find (scalar_t__,char*) ;
 int cmdline_parts_free (scalar_t__*) ;
 scalar_t__ cmdline_parts_parse (scalar_t__*,int *) ;
 int cmdline_parts_set (struct cmdline_parts*,int,int,int ,void*) ;
 int cmdline_parts_verifier (int,struct parsed_partitions*) ;
 int get_capacity (int ) ;
 int strlcat (int ,char*,int ) ;

int cmdline_partition(struct parsed_partitions *state)
{
 sector_t disk_size;
 char bdev[BDEVNAME_SIZE];
 struct cmdline_parts *parts;

 if (cmdline) {
  if (bdev_parts)
   cmdline_parts_free(&bdev_parts);

  if (cmdline_parts_parse(&bdev_parts, cmdline)) {
   cmdline = ((void*)0);
   return -1;
  }
  cmdline = ((void*)0);
 }

 if (!bdev_parts)
  return 0;

 bdevname(state->bdev, bdev);
 parts = cmdline_parts_find(bdev_parts, bdev);
 if (!parts)
  return 0;

 disk_size = get_capacity(state->bdev->bd_disk) << 9;

 cmdline_parts_set(parts, disk_size, 1, add_part, (void *)state);
 cmdline_parts_verifier(1, state);

 strlcat(state->pp_buf, "\n", PAGE_SIZE);

 return 1;
}
