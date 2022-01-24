#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int place; int owner; int type; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; struct TYPE_4__* hnext; } ;
typedef  TYPE_1__ place_t ;
typedef  int /*<<< orphan*/  notify_place_t ;
typedef  int /*<<< orphan*/  comment_t ;

/* Variables and functions */
 scalar_t__ COMM_MODE ; 
 int NOTIFY_MODE ; 
 unsigned int PLACES_HASH ; 
 void** Place ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  tot_places ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static place_t *FUNC3 (int type, int owner, int place, int force) {
  FUNC0 (NOTIFY_MODE || COMM_MODE);
  FUNC1 (5, "get_place_f: type = %d, owner = %d, place = %d, force = %d\n", type, owner, place, force);
  unsigned h = ((unsigned) (type * 17239 + owner * 239 + place)) % PLACES_HASH;
  place_t **p = Place + h, *V;
  while (*p) {
    V = *p;
    if (V->place == place && V->owner == owner && V->type == type) {
      *p = V->hnext;
      if (force >= 0) {
        V->hnext = Place[h];
        Place[h] = V;
      }
      FUNC1 (5, "get_place_f: result = %p\n", V);
      return V;
    }
    p = &V->hnext;
  }
  if (force <= 0) {
    FUNC1 (5, "get_place_f: nothing found\n");
    return 0;
  }
  if (COMM_MODE) {
    V = FUNC2 (sizeof (place_t));
  } else {
    FUNC0 (NOTIFY_MODE);
    V = FUNC2 (sizeof (notify_place_t));
  }
  FUNC1 (4, "Creating new place: type = %d, owner = %d, place = %d: p = %p\n", type, owner, place, V);
  V->type = type;
  V->owner = owner;
  V->place = place;
  V->hnext = Place[h];
  V->first = V->last = (comment_t *) V;
  Place[h] = V;
  tot_places++;
  return V;
}