
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* l; } ;
typedef TYPE_1__ wkey ;
struct TYPE_8__ {struct TYPE_8__* next_time; } ;


 int TIME_TABLE_SIZE ;
 int assert (int) ;
 int del_wkey (TYPE_3__*) ;
 int dl_free (TYPE_1__*,int) ;
 int free_wkey (TYPE_3__*) ;
 int h_watchcat ;
 int h_watchcat_q ;
 int hset_llp_free (int *) ;
 scalar_t__ keys_cnt ;
 TYPE_3__** time_st ;
 scalar_t__ verbosity ;
 TYPE_1__* wkey_mem ;

void free_all (void) {
  if (verbosity) {
    keys_cnt += TIME_TABLE_SIZE;
    int i;
    for (i = 0; i < TIME_TABLE_SIZE; i++) {
      while (time_st[i]->next_time != time_st[i]) {
        del_wkey (time_st[i]->next_time);
      }
      free_wkey (time_st[i]);
    }
    assert (keys_cnt == 0);

    while (wkey_mem != ((void*)0)) {
      wkey *k = wkey_mem;
      wkey_mem = wkey_mem->l;
      dl_free (k, sizeof (wkey));
    }

    hset_llp_free (&h_watchcat);
    hset_llp_free (&h_watchcat_q);
  }
}
