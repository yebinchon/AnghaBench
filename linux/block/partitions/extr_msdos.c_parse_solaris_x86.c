
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct solaris_x86_vtoc {scalar_t__ v_sanity; scalar_t__ v_version; struct solaris_x86_slice* v_slice; int v_nparts; } ;
struct solaris_x86_slice {scalar_t__ s_size; scalar_t__ s_start; } ;
struct parsed_partitions {char* name; scalar_t__ next; scalar_t__ limit; int pp_buf; } ;
typedef int sector_t ;
typedef int Sector ;


 int BDEVNAME_SIZE ;
 int PAGE_SIZE ;
 int SOLARIS_X86_NUMSLICE ;
 int SOLARIS_X86_VTOC_SANE ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int put_dev_sector (int ) ;
 int put_partition (struct parsed_partitions*,int ,int,int) ;
 struct solaris_x86_vtoc* read_part_sector (struct parsed_partitions*,int,int *) ;
 int snprintf (char*,int,char*,...) ;
 int strlcat (int ,char*,int ) ;

__attribute__((used)) static void parse_solaris_x86(struct parsed_partitions *state,
         sector_t offset, sector_t size, int origin)
{
}
