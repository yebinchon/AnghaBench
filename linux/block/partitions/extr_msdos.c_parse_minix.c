
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct partition {int dummy; } ;
struct parsed_partitions {char* name; scalar_t__ next; scalar_t__ limit; int pp_buf; } ;
typedef int sector_t ;
typedef int Sector ;


 int BDEVNAME_SIZE ;
 int MINIX_NR_SUBPARTITIONS ;
 scalar_t__ MINIX_PARTITION ;
 int PAGE_SIZE ;
 scalar_t__ SYS_IND (struct partition*) ;
 scalar_t__ msdos_magic_present (unsigned char*) ;
 int nr_sects (struct partition*) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int ,int ,int ) ;
 unsigned char* read_part_sector (struct parsed_partitions*,int ,int *) ;
 int snprintf (char*,int,char*,char*,int) ;
 int start_sect (struct partition*) ;
 int strlcat (int ,char*,int ) ;

__attribute__((used)) static void parse_minix(struct parsed_partitions *state,
   sector_t offset, sector_t size, int origin)
{
}
