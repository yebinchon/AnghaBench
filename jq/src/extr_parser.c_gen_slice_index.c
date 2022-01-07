
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opcode ;
typedef int block ;


 int BLOCK (int ,int ,int ,...) ;
 int INSERT ;
 int gen_const (int ) ;
 int gen_op_simple (int ) ;
 int gen_subexp (int ) ;
 int jv_object () ;
 int jv_string (char*) ;

__attribute__((used)) static block gen_slice_index(block obj, block start, block end, opcode idx_op) {
  block key = BLOCK(gen_subexp(gen_const(jv_object())),
                    gen_subexp(gen_const(jv_string("start"))),
                    gen_subexp(start),
                    gen_op_simple(INSERT),
                    gen_subexp(gen_const(jv_string("end"))),
                    gen_subexp(end),
                    gen_op_simple(INSERT));
  return BLOCK(key, obj, gen_op_simple(idx_op));
}
