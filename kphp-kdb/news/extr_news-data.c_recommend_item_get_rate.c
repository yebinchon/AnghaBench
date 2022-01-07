
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int action; int type; } ;
typedef TYPE_1__ recommend_item_t ;


 int get_recommend_rate (int ,int ,double*) ;

__attribute__((used)) static inline double recommend_item_get_rate (recommend_item_t *p) {
  double rate;
  if (!get_recommend_rate (p->type, p->action, &rate)) {
    return rate;
  }
  return 1.0;
}
