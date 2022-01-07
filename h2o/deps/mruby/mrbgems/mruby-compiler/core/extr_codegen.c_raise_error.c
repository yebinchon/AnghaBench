
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mrb; } ;
typedef TYPE_1__ codegen_scope ;


 int OP_ERR ;
 int genop_1 (TYPE_1__*,int ,int) ;
 int mrb_str_new_cstr (int ,char const*) ;
 int new_lit (TYPE_1__*,int ) ;

__attribute__((used)) static void
raise_error(codegen_scope *s, const char *msg)
{
  int idx = new_lit(s, mrb_str_new_cstr(s->mrb, msg));

  genop_1(s, OP_ERR, idx);
}
