
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ processor_rev_id; } ;
struct microcode_amd {TYPE_1__ hdr; } ;
struct equiv_cpu_table {int num_entries; struct equiv_cpu_entry* entry; } ;
struct equiv_cpu_entry {int dummy; } ;
struct cont_desc {int psize; size_t size; int * data; struct microcode_amd* mc; int cpuid_1_eax; } ;


 int CONTAINER_HDR_SZ ;
 int SECTION_HDR_SIZE ;
 scalar_t__ find_equiv_id (struct equiv_cpu_table*,int ) ;
 int verify_equivalence_table (int *,size_t,int) ;
 int verify_patch (int ,int *,size_t,int*,int) ;
 int x86_family (int ) ;

__attribute__((used)) static size_t parse_container(u8 *ucode, size_t size, struct cont_desc *desc)
{
 struct equiv_cpu_table table;
 size_t orig_size = size;
 u32 *hdr = (u32 *)ucode;
 u16 eq_id;
 u8 *buf;

 if (!verify_equivalence_table(ucode, size, 1))
  return 0;

 buf = ucode;

 table.entry = (struct equiv_cpu_entry *)(buf + CONTAINER_HDR_SZ);
 table.num_entries = hdr[2] / sizeof(struct equiv_cpu_entry);






 eq_id = find_equiv_id(&table, desc->cpuid_1_eax);

 buf += hdr[2] + CONTAINER_HDR_SZ;
 size -= hdr[2] + CONTAINER_HDR_SZ;





 while (size > 0) {
  struct microcode_amd *mc;
  u32 patch_size;
  int ret;

  ret = verify_patch(x86_family(desc->cpuid_1_eax), buf, size, &patch_size, 1);
  if (ret < 0) {




   goto out;
  } else if (ret > 0) {
   goto skip;
  }

  mc = (struct microcode_amd *)(buf + SECTION_HDR_SIZE);
  if (eq_id == mc->hdr.processor_rev_id) {
   desc->psize = patch_size;
   desc->mc = mc;
  }

skip:

  buf += patch_size + SECTION_HDR_SIZE;
  size -= patch_size + SECTION_HDR_SIZE;
 }
 if (desc->mc) {
  desc->data = ucode;
  desc->size = orig_size - size;

  return 0;
 }

out:
 return orig_size - size;
}
