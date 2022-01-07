
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clean; } ;
struct vmcb {TYPE_1__ control; } ;


 int VMCB_ALWAYS_DIRTY_MASK ;
 int VMCB_DIRTY_MAX ;

__attribute__((used)) static inline void mark_all_clean(struct vmcb *vmcb)
{
 vmcb->control.clean = ((1 << VMCB_DIRTY_MAX) - 1)
          & ~VMCB_ALWAYS_DIRTY_MASK;
}
