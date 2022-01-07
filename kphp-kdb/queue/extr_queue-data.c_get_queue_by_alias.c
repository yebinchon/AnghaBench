
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue ;
typedef scalar_t__ ll ;


 scalar_t__ ZERO_UID ;
 int alias ;
 scalar_t__ map_ll_vptr_get (int *,scalar_t__) ;

queue *get_queue_by_alias (ll id) {
  if (id == 0) {
    id = ZERO_UID;
  }

  queue **q = (queue **)map_ll_vptr_get (&alias, id);

  if (q == ((void*)0)) {
    return ((void*)0);
  }
  return *q;
}
