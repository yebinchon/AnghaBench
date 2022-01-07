
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int olist_t ;
struct TYPE_2__ {int * last; int * first; } ;


 TYPE_1__* OHead ;
 int OLIST_COUNT ;

__attribute__((used)) static inline void online_list_init () {
  int i;
  for (i = 0; i < OLIST_COUNT; i++) {
    OHead[i].first = OHead[i].last = (olist_t *)&OHead[i];
  }
}
