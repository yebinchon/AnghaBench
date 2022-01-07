
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int BLOCK (int ,int ,int ) ;
 int DUP ;
 int OP_BIND_WILDCARD ;
 int OP_HAS_VARIABLE ;
 int STOREV ;
 int block_bind (int ,int ,int) ;
 int gen_op_simple (int ) ;
 int gen_op_unbound (int ,char const*) ;

__attribute__((used)) static block gen_wildvar_binding(block var, const char* name, block body) {
  return BLOCK(gen_op_simple(DUP), var,
               block_bind(gen_op_unbound(STOREV, name),
                          body, OP_HAS_VARIABLE | OP_BIND_WILDCARD));
}
