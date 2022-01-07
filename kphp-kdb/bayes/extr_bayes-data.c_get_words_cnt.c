
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long size; } ;
struct TYPE_4__ {TYPE_1__ cnt; } ;


 TYPE_2__ global_bayes ;

long long get_words_cnt (void) {
  return global_bayes.cnt.size;
}
