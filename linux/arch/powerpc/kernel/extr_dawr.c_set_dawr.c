
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arch_hw_breakpoint {unsigned long address; int type; int len; } ;
struct TYPE_2__ {int (* set_dawr ) (unsigned long,unsigned long) ;} ;


 int HW_BRK_TYPE_PRIV_ALL ;
 int HW_BRK_TYPE_READ ;
 int HW_BRK_TYPE_TRANSLATE ;
 int HW_BRK_TYPE_WRITE ;
 int SPRN_DAWR ;
 int SPRN_DAWRX ;
 int mtspr (int ,unsigned long) ;
 TYPE_1__ ppc_md ;
 int stub1 (unsigned long,unsigned long) ;

int set_dawr(struct arch_hw_breakpoint *brk)
{
 unsigned long dawr, dawrx, mrd;

 dawr = brk->address;

 dawrx = (brk->type & (HW_BRK_TYPE_READ | HW_BRK_TYPE_WRITE))
  << (63 - 58);
 dawrx |= ((brk->type & (HW_BRK_TYPE_TRANSLATE)) >> 2) << (63 - 59);
 dawrx |= (brk->type & (HW_BRK_TYPE_PRIV_ALL)) >> 3;







 mrd = ((brk->len + 7) >> 3) - 1;
 dawrx |= (mrd & 0x3f) << (63 - 53);

 if (ppc_md.set_dawr)
  return ppc_md.set_dawr(dawr, dawrx);

 mtspr(SPRN_DAWR, dawr);
 mtspr(SPRN_DAWRX, dawrx);

 return 0;
}
