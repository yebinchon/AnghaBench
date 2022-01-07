
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* iseq; } ;
typedef TYPE_1__ mrb_irep ;
typedef scalar_t__ mrb_code ;
typedef int mrb_aspec ;


 int MRB_ASPEC_OPT (int ) ;
 int MRB_ASPEC_POST (int ) ;
 int MRB_ASPEC_REQ (int ) ;
 int MRB_ASPEC_REST (int ) ;
 scalar_t__ OP_ENTER ;
 int PEEK_W (scalar_t__*) ;

__attribute__((used)) static int
irep_argc(mrb_irep *irep)
{
  mrb_code c;

  c = irep->iseq[0];
  if (c == OP_ENTER) {
    mrb_aspec ax = PEEK_W(irep->iseq+1);

    return MRB_ASPEC_REQ(ax)+MRB_ASPEC_OPT(ax)+MRB_ASPEC_REST(ax)+MRB_ASPEC_POST(ax)+1;
  }
  return 0;
}
