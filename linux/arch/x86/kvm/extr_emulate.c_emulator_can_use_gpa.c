
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int d; scalar_t__ rep_prefix; } ;


 int String ;
 int TwoMemOp ;

bool emulator_can_use_gpa(struct x86_emulate_ctxt *ctxt)
{
 if (ctxt->rep_prefix && (ctxt->d & String))
  return 0;

 if (ctxt->d & TwoMemOp)
  return 0;

 return 1;
}
