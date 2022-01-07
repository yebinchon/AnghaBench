
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ev_first; } ;
typedef TYPE_1__ queue ;
struct TYPE_8__ {struct TYPE_8__* next_time; scalar_t__ lock; int timeout; int name; } ;


 int TIME_TABLE_SIZE ;
 int alias ;
 int assert (int) ;
 scalar_t__ close (int) ;
 int cr ;
 int dbg (char*,int ,int ) ;
 int delete_qkey (TYPE_2__*) ;
 int dl_crypto_free (int *) ;
 int dl_free (TYPE_1__*,int) ;
 long long dl_get_memory_used () ;
 int epoll_close (int) ;
 int fprintf (int ,char*,long long) ;
 int h_qkey ;
 int h_queue ;
 int h_subscribers ;
 int hset_llp_free (int *) ;
 int http_sfd ;
 scalar_t__ keys_cnt ;
 int map_int_int_free (int *) ;
 int map_ll_vptr_free (int *) ;
 int qkey_free (TYPE_2__*) ;
 TYPE_1__* qs ;
 int secrets ;
 int shmap_string_vptr_free (int *) ;
 int stderr ;
 TYPE_2__** time_st ;
 long long treap_get_memory () ;
 scalar_t__ verbosity ;

void free_all (void) {
  if (verbosity) {

    if (http_sfd != -1) {
      epoll_close (http_sfd);
      assert (close (http_sfd) >= 0);
    }

    keys_cnt += TIME_TABLE_SIZE;
    int i;
    for (i = 0; i < TIME_TABLE_SIZE; i++) {
      while (time_st[i]->next_time != time_st[i]) {
        if (time_st[i]->next_time->lock) {
          dbg ("Problem with key[%s] timeout = %d\n", time_st[i]->next_time->name,
               time_st[i]->next_time->timeout);
        }
        assert (!time_st[i]->next_time->lock);

        delete_qkey (time_st[i]->next_time);
      }
      qkey_free (time_st[i]);
    }
    assert (keys_cnt == 0);


    while (qs != ((void*)0)) {
      queue *q = qs;
      qs = (queue *)qs->ev_first;
      dl_free (q, sizeof (queue));
    }

    shmap_string_vptr_free (&h_queue);
    shmap_string_vptr_free (&h_qkey);
    map_int_int_free (&secrets);
    map_ll_vptr_free (&alias);

    hset_llp_free (&h_subscribers);

    dl_crypto_free (&cr);

    long long left_memory = dl_get_memory_used() - treap_get_memory();

    fprintf (stderr, "Memory left: %lld\n", left_memory);
    assert (left_memory == 0);
  }
}
