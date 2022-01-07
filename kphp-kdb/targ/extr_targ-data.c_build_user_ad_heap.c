
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int active_ads; int user_id; } ;
typedef TYPE_1__ user_t ;


 int AdSpace ;
 unsigned int GSORT_HEAP_SIZE ;
 scalar_t__ HN ;
 int __build_heap_generation ;
 int __build_heap_multiplier ;
 int __gsort_limit ;
 TYPE_1__* __user ;
 int __user_id ;
 int assert (int) ;
 int heap_push_user_ad ;
 int intree_traverse (int ,int ,int ) ;
 int lrand48 () ;

__attribute__((used)) static int build_user_ad_heap (user_t *U, int limit) {
  assert (limit && (unsigned) limit < GSORT_HEAP_SIZE);
  __gsort_limit = limit;
  __user_id = U->user_id;
  __user = U;
  __build_heap_generation++;
  __build_heap_multiplier = (lrand48 () + 0x40000000) | 1;
  HN = 0;
  return intree_traverse (AdSpace, U->active_ads, heap_push_user_ad);
}
