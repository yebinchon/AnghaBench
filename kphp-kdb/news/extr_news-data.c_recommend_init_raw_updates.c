
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLACES_HASH ;
 int RECOMMEND_PLACES_HASH ;
 int assert (int) ;
 scalar_t__ tot_places ;

void recommend_init_raw_updates (void) {
  assert (tot_places == 0);
  assert (2 * RECOMMEND_PLACES_HASH <= PLACES_HASH);
}
