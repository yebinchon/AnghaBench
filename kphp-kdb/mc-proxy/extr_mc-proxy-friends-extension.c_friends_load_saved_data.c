
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keep_mc_store {scalar_t__ magic; int num; scalar_t__ list_id; } ;
struct connection {TYPE_1__* Tmp; } ;
typedef int nb_iterator_t ;
struct TYPE_2__ {scalar_t__ start; } ;


 scalar_t__ FRIENDS_STORE_MAGIC ;
 int assert (int) ;
 scalar_t__ list_id ;
 int nbit_advance (int *,int) ;
 int nbit_read_in (int *,int ,int) ;
 int nbit_set (int *,TYPE_1__*) ;
 int user_num ;
 int userlist ;

void friends_load_saved_data (struct connection *c) {
  struct keep_mc_store *Data = 0;
  if (c->Tmp) {
    Data = (struct keep_mc_store *) c->Tmp->start;
    assert (Data->magic == FRIENDS_STORE_MAGIC);
    user_num = Data->num;
  } else {
    user_num = 0;
    list_id = 0;
    return;
  }
  nb_iterator_t R;
  nbit_set (&R, c->Tmp);
  assert (nbit_advance (&R, sizeof (struct keep_mc_store)) == sizeof (struct keep_mc_store));
  assert (nbit_read_in (&R, userlist, 4 * Data->num) == 4 * Data->num);
  list_id = Data->list_id;

}
