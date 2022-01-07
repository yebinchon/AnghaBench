
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct unixware_slice {scalar_t__ s_label; int nr_sects; int start_sect; } ;
struct TYPE_2__ {struct unixware_slice* v_slice; int v_magic; } ;
struct unixware_disklabel {TYPE_1__ vtoc; int d_magic; } ;
struct parsed_partitions {char* name; scalar_t__ next; scalar_t__ limit; int pp_buf; } ;
typedef scalar_t__ sector_t ;
typedef int Sector ;


 int BDEVNAME_SIZE ;
 int PAGE_SIZE ;
 scalar_t__ UNIXWARE_DISKMAGIC ;
 scalar_t__ UNIXWARE_DISKMAGIC2 ;
 scalar_t__ UNIXWARE_FS_UNUSED ;
 int UNIXWARE_NUMSLICE ;
 scalar_t__ le32_to_cpu (int ) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int ,scalar_t__,scalar_t__) ;
 struct unixware_disklabel* read_part_sector (struct parsed_partitions*,scalar_t__,int *) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlcat (int ,char*,int ) ;

__attribute__((used)) static void parse_unixware(struct parsed_partitions *state,
      sector_t offset, sector_t size, int origin)
{
}
