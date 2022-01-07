
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t c_rptr; scalar_t__ type; struct TYPE_4__* next; } ;
typedef TYPE_1__ weights_subscription_t ;
struct TYPE_5__ {int vector_id; int coord_id; int timestamp; scalar_t__ refcnt; } ;


 TYPE_3__* CB ;
 size_t WEIGHTS_CYCLIC_BUFFER_SIZE ;
 int assert (int) ;
 size_t c_wptr ;
 int cyclic_buffer_cache_store (int,int,int) ;
 scalar_t__ st_big_updates ;
 scalar_t__ st_small_updates ;
 TYPE_1__ subscriptions ;

__attribute__((used)) static void cyclic_buffer_add (int vector_id, int coord_id, int timestamp) {
  if (!cyclic_buffer_cache_store (vector_id, coord_id, timestamp)) {
    return;
  }
  if (CB[c_wptr].refcnt) {
    weights_subscription_t *S;
    for (S = subscriptions.next; S != &subscriptions; S = S->next) {
      if (S->c_rptr == c_wptr) {
        assert (S->type == st_small_updates);
        S->type = st_big_updates;
        S->c_rptr = -1;
      }
    }
  }
  CB[c_wptr].vector_id = vector_id;
  CB[c_wptr].coord_id = coord_id;
  CB[c_wptr].timestamp = timestamp;
  CB[c_wptr].refcnt = 0;
  c_wptr = (c_wptr + 1) % WEIGHTS_CYCLIC_BUFFER_SIZE;
}
