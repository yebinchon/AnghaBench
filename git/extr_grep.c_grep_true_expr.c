
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_expr {int node; } ;


 int GREP_NODE_TRUE ;
 struct grep_expr* xcalloc (int,int) ;

__attribute__((used)) static struct grep_expr *grep_true_expr(void)
{
 struct grep_expr *z = xcalloc(1, sizeof(*z));
 z->node = GREP_NODE_TRUE;
 return z;
}
