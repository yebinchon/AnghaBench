
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ os_type; int starting_lba; } ;
typedef TYPE_1__ gpt_mbr_record ;


 scalar_t__ EFI_PMBR_OSTYPE_EFI_GPT ;
 int GPT_MBR_PROTECTIVE ;
 scalar_t__ GPT_PRIMARY_PARTITION_TABLE_LBA ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static inline int pmbr_part_valid(gpt_mbr_record *part)
{
 if (part->os_type != EFI_PMBR_OSTYPE_EFI_GPT)
  goto invalid;


 if (le32_to_cpu(part->starting_lba) != GPT_PRIMARY_PARTITION_TABLE_LBA)
  goto invalid;

 return GPT_MBR_PROTECTIVE;
invalid:
 return 0;
}
