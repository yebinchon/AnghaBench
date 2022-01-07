
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfn; } ;
struct mmuext_op {unsigned int cmd; TYPE_1__ arg1; } ;


 int pfn_to_mfn (unsigned long) ;
 int xen_extend_mmuext_op (struct mmuext_op*) ;

__attribute__((used)) static void xen_do_pin(unsigned level, unsigned long pfn)
{
 struct mmuext_op op;

 op.cmd = level;
 op.arg1.mfn = pfn_to_mfn(pfn);

 xen_extend_mmuext_op(&op);
}
