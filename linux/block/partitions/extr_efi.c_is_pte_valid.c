
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int ending_lba; int starting_lba; int partition_type_guid; } ;
typedef TYPE_1__ gpt_entry ;


 int NULL_GUID ;
 int efi_guidcmp (int ,int ) ;
 scalar_t__ const le64_to_cpu (int ) ;

__attribute__((used)) static inline int
is_pte_valid(const gpt_entry *pte, const u64 lastlba)
{
 if ((!efi_guidcmp(pte->partition_type_guid, NULL_GUID)) ||
     le64_to_cpu(pte->starting_lba) > lastlba ||
     le64_to_cpu(pte->ending_lba) > lastlba)
  return 0;
 return 1;
}
