
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_score {scalar_t__ effective_indent; int penalty; } ;


 int INDENT_WEIGHT ;

__attribute__((used)) static int score_cmp(struct split_score *s1, struct split_score *s2)
{

 int cmp_indents = ((s1->effective_indent > s2->effective_indent) -
      (s1->effective_indent < s2->effective_indent));

 return INDENT_WEIGHT * cmp_indents + (s1->penalty - s2->penalty);
}
