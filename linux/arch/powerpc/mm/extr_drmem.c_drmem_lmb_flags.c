
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drmem_lmb {int flags; } ;


 int DRMEM_LMB_RESERVED ;

__attribute__((used)) static u32 drmem_lmb_flags(struct drmem_lmb *lmb)
{




 return lmb->flags & ~DRMEM_LMB_RESERVED;
}
