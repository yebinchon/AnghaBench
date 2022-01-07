
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int op; struct TYPE_3__* right; struct TYPE_3__* left; int word; } ;
typedef TYPE_1__ query_node_t ;


 int fprintf (int ,char*,...) ;
 int get_word_frequency (int ) ;






 int stderr ;

__attribute__((used)) static void dump_query_tree (query_node_t *X) {
  if (!X) {
    fprintf (stderr, "(NULL)");
    return;
  }
  switch (X->op) {
    case 132:
      fprintf (stderr, "(false)");
      return;
    case 129:
      fprintf (stderr, "(true)");
      return;
    case 128:
      fprintf (stderr, "(word %016llx, freq = %d)", X->word, get_word_frequency (X->word));
      return;
    case 133:
      fprintf (stderr, "(and ");
      break;
    case 130:
      fprintf (stderr, "(or ");
      break;
    case 131:
      fprintf (stderr, "(minus ");
      break;
    default:
      fprintf (stderr, "(???%d ", X->op);
  }
  dump_query_tree (X->left);
  fprintf (stderr, " ");
  dump_query_tree (X->right);
  fprintf (stderr, ")");
}
