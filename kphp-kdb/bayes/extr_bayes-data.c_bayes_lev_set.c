
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_bayes_set {int type; int text_len; int text; } ;


 int bayes_set (int ,int ,int) ;

int bayes_lev_set (struct lev_bayes_set *E) {
  return bayes_set (E->text, E->text_len, E->type & 15);
}
