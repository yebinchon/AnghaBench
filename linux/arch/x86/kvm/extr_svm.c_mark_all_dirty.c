
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ clean; } ;
struct vmcb {TYPE_1__ control; } ;



__attribute__((used)) static inline void mark_all_dirty(struct vmcb *vmcb)
{
 vmcb->control.clean = 0;
}
