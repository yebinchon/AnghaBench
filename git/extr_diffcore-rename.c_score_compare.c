
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_score {scalar_t__ dst; scalar_t__ score; int name_score; } ;



__attribute__((used)) static int score_compare(const void *a_, const void *b_)
{
 const struct diff_score *a = a_, *b = b_;


 if (a->dst < 0)
  return (0 <= b->dst);
 else if (b->dst < 0)
  return -1;

 if (a->score == b->score)
  return b->name_score - a->name_score;

 return b->score - a->score;
}
