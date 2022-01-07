
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int index_header ;
struct TYPE_2__ {int priv_mask; int user_id; } ;


 int MAX_USERS ;
 TYPE_1__** User ;
 int assert (int) ;
 int clearin () ;
 int flushout () ;
 int log_split_min ;
 int log_split_mod ;
 int writeint (int) ;

void save_privacy (index_header *header) {
  clearin ();
  int i;
  for (i = 0; i < MAX_USERS; i++) if (User[i] && User[i]->priv_mask != 1) {
    writeint (User[i]->user_id * log_split_mod + log_split_min);
    writeint (User[i]->priv_mask);
    assert (User[i]->priv_mask & 1);
  }
  flushout ();
}
