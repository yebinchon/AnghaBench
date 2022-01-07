
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct plt_entry {scalar_t__ add; scalar_t__ br; scalar_t__ adrp; } ;


 scalar_t__ ALIGN_DOWN (scalar_t__,int ) ;
 int SZ_4K ;
 scalar_t__ aarch64_insn_adrp_get_offset (int ) ;
 int le32_to_cpu (scalar_t__) ;

bool plt_entries_equal(const struct plt_entry *a, const struct plt_entry *b)
{
 u64 p, q;







 if (a->add != b->add || a->br != b->br)
  return 0;

 p = ALIGN_DOWN((u64)a, SZ_4K);
 q = ALIGN_DOWN((u64)b, SZ_4K);





 if (a->adrp == b->adrp && p == q)
  return 1;

 return (p + aarch64_insn_adrp_get_offset(le32_to_cpu(a->adrp))) ==
        (q + aarch64_insn_adrp_get_offset(le32_to_cpu(b->adrp)));
}
