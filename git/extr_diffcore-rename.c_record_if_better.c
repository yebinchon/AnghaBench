
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_score {int dummy; } ;


 int NUM_CANDIDATE_PER_DST ;
 scalar_t__ score_compare (struct diff_score*,struct diff_score*) ;

__attribute__((used)) static void record_if_better(struct diff_score m[], struct diff_score *o)
{
 int i, worst;


 worst = 0;
 for (i = 1; i < NUM_CANDIDATE_PER_DST; i++)
  if (score_compare(&m[i], &m[worst]) > 0)
   worst = i;


 if (score_compare(&m[worst], o) > 0)
  m[worst] = *o;
}
