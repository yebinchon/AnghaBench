
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int place; int owner; int type; double weight; scalar_t__ users; scalar_t__ actions_bitset; scalar_t__ last_user; struct TYPE_4__* hnext; } ;
typedef TYPE_1__ recommend_place_t ;
typedef int place_t ;


 scalar_t__ MAX_GROUPS ;
 int ** Place ;
 int RECOMMEND_MODE ;
 unsigned int RECOMMEND_PLACES_HASH ;
 int assert (int ) ;
 scalar_t__ tot_places ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static recommend_place_t *get_recommend_place_f (int type, int owner, int place, int force) {
  assert (RECOMMEND_MODE);
  unsigned h = ((unsigned) (type * 17239 + owner * 239 + place)) % RECOMMEND_PLACES_HASH;
  recommend_place_t **p = ((recommend_place_t **) Place) + h, *V;
  while (*p) {
    V = *p;
    if (V->place == place && V->owner == owner && V->type == type) {
      *p = V->hnext;
      if (force >= 0) {
        V->hnext = (recommend_place_t *) Place[h];
        Place[h] = (place_t *) V;
      }
      return V;
    }
    p = &V->hnext;
  }
  if (force <= 0 || tot_places >= MAX_GROUPS) {
    return 0;
  }
  V = zmalloc (sizeof (recommend_place_t));
  V->type = type;
  V->owner = owner;
  V->place = place;
  V->hnext = (recommend_place_t *) Place[h];
  V->weight = 0.0;
  V->last_user = 0;
  V->actions_bitset = 0;
  V->users = 0;
  Place[h] = (place_t *) V;
  tot_places++;
  return V;
}
