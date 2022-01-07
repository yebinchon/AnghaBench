
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef enum cmp_op { ____Placeholder_cmp_op } cmp_op ;


 int CMP_OP_GREATER ;
 int CMP_OP_GREATEREQ ;
 int CMP_OP_LESS ;
 int CMP_OP_LESSEQ ;
 int jv_bool (int) ;
 int jv_cmp (int ,int ) ;
 int jv_free (int ) ;

__attribute__((used)) static jv order_cmp(jv input, jv a, jv b, enum cmp_op op) {
  jv_free(input);
  int r = jv_cmp(a, b);
  return jv_bool((op == CMP_OP_LESS && r < 0) ||
                 (op == CMP_OP_LESSEQ && r <= 0) ||
                 (op == CMP_OP_GREATEREQ && r >= 0) ||
                 (op == CMP_OP_GREATER && r > 0));
}
