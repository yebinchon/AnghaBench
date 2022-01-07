
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct grep_expr* right; struct grep_expr* left; } ;
struct TYPE_4__ {TYPE_1__ binary; struct grep_expr* unary; int atom; } ;
struct grep_expr {int node; TYPE_2__ u; } ;







 int dump_grep_pat (int ) ;
 int fprintf (int ,char*) ;
 int indent (int) ;
 int stderr ;

__attribute__((used)) static void dump_grep_expression_1(struct grep_expr *x, int in)
{
 indent(in);
 switch (x->node) {
 case 128:
  fprintf(stderr, "true\n");
  break;
 case 131:
  dump_grep_pat(x->u.atom);
  break;
 case 130:
  fprintf(stderr, "(not\n");
  dump_grep_expression_1(x->u.unary, in+1);
  indent(in);
  fprintf(stderr, ")\n");
  break;
 case 132:
  fprintf(stderr, "(and\n");
  dump_grep_expression_1(x->u.binary.left, in+1);
  dump_grep_expression_1(x->u.binary.right, in+1);
  indent(in);
  fprintf(stderr, ")\n");
  break;
 case 129:
  fprintf(stderr, "(or\n");
  dump_grep_expression_1(x->u.binary.left, in+1);
  dump_grep_expression_1(x->u.binary.right, in+1);
  indent(in);
  fprintf(stderr, ")\n");
  break;
 }
}
