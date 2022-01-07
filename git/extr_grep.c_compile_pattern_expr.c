
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int dummy; } ;
struct grep_expr {int dummy; } ;


 struct grep_expr* compile_pattern_or (struct grep_pat**) ;

__attribute__((used)) static struct grep_expr *compile_pattern_expr(struct grep_pat **list)
{
 return compile_pattern_or(list);
}
