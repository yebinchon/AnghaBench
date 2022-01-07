
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bytecoded_builtin {char* member_0; char* name; int code; int member_1; } ;
typedef int builtin_defs ;
typedef int builtin_def_1arg ;
typedef int block ;


 int BACKTRACK ;
 int BLOCK (int ,int ,...) ;
 int DUP ;
 int LOADV ;
 int PATH_BEGIN ;
 int PATH_END ;
 int RANGE ;
 int STOREV ;
 int gen_call (char*,int ) ;
 int gen_condbranch (int ,int ) ;
 int gen_const (int ) ;
 int gen_function (char*,int ,int ) ;
 int gen_noop () ;
 int gen_op_bound (int ,int ) ;
 int gen_op_simple (int ) ;
 int gen_op_var_fresh (int ,char*) ;
 int gen_param (char*) ;
 int jv_false () ;
 int jv_true () ;

__attribute__((used)) static block bind_bytecoded_builtins(block b) {
  block builtins = gen_noop();
  {
    struct bytecoded_builtin builtin_defs[] = {
      {"empty", gen_op_simple(BACKTRACK)},
      {"not", gen_condbranch(gen_const(jv_false()),
                             gen_const(jv_true()))}
    };
    for (unsigned i=0; i<sizeof(builtin_defs)/sizeof(builtin_defs[0]); i++) {
      builtins = BLOCK(builtins, gen_function(builtin_defs[i].name, gen_noop(),
                                              builtin_defs[i].code));
    }
  }
  {
    struct bytecoded_builtin builtin_def_1arg[] = {
      {"path", BLOCK(gen_op_simple(PATH_BEGIN),
                     gen_call("arg", gen_noop()),
                     gen_op_simple(PATH_END))},
    };
    for (unsigned i=0; i<sizeof(builtin_def_1arg)/sizeof(builtin_def_1arg[0]); i++) {
      builtins = BLOCK(builtins, gen_function(builtin_def_1arg[i].name,
                                              gen_param("arg"),
                                              builtin_def_1arg[i].code));
    }
  }
  {

    block rangevar = gen_op_var_fresh(STOREV, "rangevar");
    block rangestart = gen_op_var_fresh(STOREV, "rangestart");
    block range = BLOCK(gen_op_simple(DUP),
                        gen_call("start", gen_noop()),
                        rangestart,
                        gen_call("end", gen_noop()),
                        gen_op_simple(DUP),
                        gen_op_bound(LOADV, rangestart),

                        rangevar,
                        gen_op_bound(RANGE, rangevar));
    builtins = BLOCK(builtins, gen_function("range",
                                            BLOCK(gen_param("start"), gen_param("end")),
                                            range));
  }
  return BLOCK(builtins, b);
}
