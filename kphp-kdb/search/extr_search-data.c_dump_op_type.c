
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t op; int word; } ;
typedef TYPE_1__ query_node_t ;


 int kprintf (char*,char const*,char*,int ) ;

void dump_op_type (const char *msg, query_node_t *X) {
  static char *ops[] = {"qn_false", "qn_true", "qn_word", "qn_and", "qn_or", "qn_minus", "qn_error", "qn_cum_and", "qn_cum_or"};
  kprintf ("%s: %s %llx\n", msg, ops[X->op], X->word);
}
