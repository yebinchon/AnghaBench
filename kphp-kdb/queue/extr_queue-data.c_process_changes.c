
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ size; } ;
typedef TYPE_1__ treap ;
typedef int pli ;
typedef int ll ;
struct TYPE_9__ {int x; int y; } ;


 int LOG_DEF ;
 int MAX_SUBSCR ;
 int STAT (int ) ;
 int STAT_MAX (int ,int) ;
 int changes_add_cnt ;
 int changes_add_len ;
 int changes_add_rev_cnt ;
 int changes_add_rev_len ;
 int changes_del_cnt ;
 int changes_del_len ;
 int changes_del_rev_cnt ;
 int changes_del_rev_len ;
 int changes_len_max ;
 int cnt_srt (int *,int,TYPE_4__*) ;
 int dl_abs (int ) ;
 int dl_log_add (int ,int ,char*,int,int ) ;
 int engine_n ;
 int flush_news () ;
 int process_changes_cnt ;
 int process_changes_total_len ;
 int rand () ;
 TYPE_4__* sb ;
 int send_to_news_ (int ,TYPE_4__*,int,int,int) ;
 int treap_add (TYPE_1__*,int ,int ,int ) ;
 int treap_cnt ;
 int treap_del (TYPE_1__*,int ) ;

void process_changes (ll id, treap *t, pli *a, int n, int is_add, int is_rev) {
  if (n == 0) {
    return;
  }

  if (n > MAX_SUBSCR) {
    dl_log_add (LOG_DEF, 0, "Too many subscribers %d [id = %lld]\n", n, id);
    n = MAX_SUBSCR;
  }
  cnt_srt (a, n, sb);

  STAT (process_changes_cnt);
  STAT_MAX (changes_len_max, n);
  process_changes_total_len += n;

  if (is_add) {
    if (is_rev) {
       STAT (changes_add_rev_cnt);
       changes_add_rev_len += n;
    } else {
       STAT (changes_add_cnt);
       changes_add_len += n;
    }
  } else {
    if (is_rev) {
       STAT (changes_del_rev_cnt);
       changes_del_rev_len += n;
    } else {
       STAT (changes_del_cnt);
       changes_del_len += n;
    }
  }

  int i, j, f = 0;
  for (i = j = 0; i <= n; i++) {
    if (i < n) {


      if (t != ((void*)0)) {
        treap_cnt += t->size;


        if (is_add) {
          treap_add (t, sb[i].x, sb[i].y, rand());
        } else {
          treap_del (t, sb[i].x);
        }

        treap_cnt -= t->size;
      }
    }
    if (i == n || dl_abs (sb[i].x) % engine_n != dl_abs (sb[j].x) % engine_n) {
      send_to_news_ (id, sb + j, i - j, is_add, is_rev);
      f = 1;
      j = i;
    }
  }
  if (f) {
    flush_news();
  }
}
