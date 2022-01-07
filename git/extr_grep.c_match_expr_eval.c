
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grep_opt {int columnnum; } ;
struct TYPE_5__ {struct grep_expr* right; struct grep_expr* left; } ;
struct TYPE_6__ {TYPE_1__ binary; struct grep_expr* unary; int atom; } ;
struct grep_expr {int node; int hit; TYPE_2__ u; } ;
typedef int ssize_t ;
struct TYPE_7__ {int rm_so; } ;
typedef TYPE_3__ regmatch_t ;
typedef enum grep_context { ____Placeholder_grep_context } grep_context ;







 int die (char*,...) ;
 int match_one_pattern (int ,char*,char*,int,TYPE_3__*,int ) ;

__attribute__((used)) static int match_expr_eval(struct grep_opt *opt, struct grep_expr *x, char *bol,
      char *eol, enum grep_context ctx, ssize_t *col,
      ssize_t *icol, int collect_hits)
{
 int h = 0;

 if (!x)
  die("Not a valid grep expression");
 switch (x->node) {
 case 128:
  h = 1;
  break;
 case 131:
  {
   regmatch_t tmp;
   h = match_one_pattern(x->u.atom, bol, eol, ctx,
           &tmp, 0);
   if (h && (*col < 0 || tmp.rm_so < *col))
    *col = tmp.rm_so;
  }
  break;
 case 130:



  h = !match_expr_eval(opt, x->u.unary, bol, eol, ctx, icol, col,
         0);
  break;
 case 132:
  h = match_expr_eval(opt, x->u.binary.left, bol, eol, ctx, col,
        icol, 0);
  if (h || opt->columnnum) {





   h &= match_expr_eval(opt, x->u.binary.right, bol, eol,
          ctx, col, icol, 0);
  }
  break;
 case 129:
  if (!(collect_hits || opt->columnnum)) {





   return (match_expr_eval(opt, x->u.binary.left, bol, eol,
      ctx, col, icol, 0) ||
    match_expr_eval(opt, x->u.binary.right, bol,
      eol, ctx, col, icol, 0));
  }
  h = match_expr_eval(opt, x->u.binary.left, bol, eol, ctx, col,
        icol, 0);
  if (collect_hits)
   x->u.binary.left->hit |= h;
  h |= match_expr_eval(opt, x->u.binary.right, bol, eol, ctx, col,
         icol, collect_hits);
  break;
 default:
  die("Unexpected node type (internal error) %d", x->node);
 }
 if (collect_hits)
  x->hit |= h;
 return h;
}
