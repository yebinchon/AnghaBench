
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BACKTRACK ;
 int BLOCK (int ,int ) ;
 int GENLABEL ;
 int LOADV ;
 int POP ;
 int gen_call (char*,int ) ;
 int gen_cond (int ,int ,int ) ;
 int gen_lambda (int ) ;
 int gen_noop () ;
 int gen_op_simple (int ) ;
 int gen_op_unbound (int ,char const*) ;
 int gen_try (int ,int ) ;
 int gen_wildvar_binding (int ,char const*,int ) ;

block gen_label(const char *label, block exp) {
  block cond = gen_call("_equal",
                        BLOCK(gen_lambda(gen_noop()),
                              gen_lambda(gen_op_unbound(LOADV, label))));
  return gen_wildvar_binding(gen_op_simple(GENLABEL), label,
                             BLOCK(gen_op_simple(POP),







                                   gen_try(exp,
                                           gen_cond(cond,
                                                    gen_op_simple(BACKTRACK),
                                                    gen_call("error", gen_noop())))));
}
