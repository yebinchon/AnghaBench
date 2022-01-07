
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_id; int prev; } ;
typedef TYPE_1__ entry_t ;


 int * LastMsg ;
 int get_hash (int) ;
 int mod ;
 int msgs_analyzed ;
 int msgs_read ;
 int rem ;
 int store_entry (TYPE_1__*) ;

void process (entry_t *E) {
  int mid = E->user_id;
  int h = get_hash (mid);
  msgs_read++;
  if (mid % mod == rem) {
    E->prev = LastMsg [h];
    LastMsg[h] = store_entry (E);
    msgs_analyzed++;
  }

}
