
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int q; } ;
struct TYPE_6__ {TYPE_2__ reg; int msr_no; } ;
struct saved_msr {TYPE_3__ info; scalar_t__ valid; } ;
struct TYPE_4__ {int num; struct saved_msr* array; } ;
struct saved_context {TYPE_1__ saved_msrs; } ;


 int wrmsrl (int ,int ) ;

__attribute__((used)) static void msr_restore_context(struct saved_context *ctxt)
{
 struct saved_msr *msr = ctxt->saved_msrs.array;
 struct saved_msr *end = msr + ctxt->saved_msrs.num;

 while (msr < end) {
  if (msr->valid)
   wrmsrl(msr->info.msr_no, msr->info.reg.q);
  msr++;
 }
}
