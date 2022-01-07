
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_news_set_recommend_rate {int action; int type; int rate; } ;


 int * recommend_rate_tbl ;

__attribute__((used)) static int set_recommend_rate (struct lev_news_set_recommend_rate *E) {
  if (E->action < 0 || E->action > 255) {
    return 0;
  }
  recommend_rate_tbl[((E->type & 31) << 8) + E->action] = E->rate;
  return 1;
}
