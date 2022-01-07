
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos_to; int neg_to; } ;
typedef TYPE_1__ user_mod_header_t ;


 int assert (TYPE_1__*) ;

void dyn_delall_msg (user_mod_header_t *H, int message_id) {
  assert (H);
  if (message_id > 0 && H->pos_to < message_id) {
    H->pos_to = message_id;
  }
  if (message_id < 0 && H->neg_to > message_id) {
    H->neg_to = message_id;
  }
}
