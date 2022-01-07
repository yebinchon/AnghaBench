
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct parsed_partitions {int dummy; } ;
struct TYPE_3__ {int partition_entry_lba; int sizeof_partition_entry; int num_partition_entries; } ;
typedef TYPE_1__ gpt_header ;
typedef int gpt_entry ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 size_t le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 size_t read_lba (struct parsed_partitions*,int ,int *,size_t) ;

__attribute__((used)) static gpt_entry *alloc_read_gpt_entries(struct parsed_partitions *state,
      gpt_header *gpt)
{
 size_t count;
 gpt_entry *pte;

 if (!gpt)
  return ((void*)0);

 count = (size_t)le32_to_cpu(gpt->num_partition_entries) *
                le32_to_cpu(gpt->sizeof_partition_entry);
 if (!count)
  return ((void*)0);
 pte = kmalloc(count, GFP_KERNEL);
 if (!pte)
  return ((void*)0);

 if (read_lba(state, le64_to_cpu(gpt->partition_entry_lba),
   (u8 *) pte, count) < count) {
  kfree(pte);
                pte=((void*)0);
  return ((void*)0);
 }
 return pte;
}
