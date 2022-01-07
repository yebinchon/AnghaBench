
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct item {double sum_sqr_freq_title; double sum_freq_title_freq_text; double sum_sqr_freq_text; } ;
struct TYPE_3__ {double weight; double (* f ) (struct item*,TYPE_1__*) ;} ;


 TYPE_1__* QRW ;
 int query_rate_weights ;
 double sqr_word_text_weight ;
 double sqr_word_title_weight ;
 double sqrt (double) ;
 double stub1 (struct item*,TYPE_1__*) ;
 double word_title_weight_word_text_weight ;

__attribute__((used)) static inline double evaluate_rating (struct item *I, double w) {
  int i;

  double s = sqr_word_title_weight * I->sum_sqr_freq_title +
             word_title_weight_word_text_weight * I->sum_freq_title_freq_text +
             sqr_word_text_weight * I->sum_sqr_freq_text;
  if (s < 1e-9) { return 1.0; }
  w /= sqrt (s);
  double r = 1.0 - w * QRW[0].weight;
  for (i = 1; i < query_rate_weights; i++) {
    r -= QRW[i].f (I, QRW + i) * QRW[i].weight;
  }
  if (r < 0.0) { r = 0.0; }
  if (r > 1.0) { r = 1.0; }
  return r;
}
