
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* treap_node_ptr ;
struct TYPE_9__ {int subscr_cnt; int keys_cnt; int ev_first; int ref_cnt; int name; int * subs; } ;
typedef TYPE_2__ queue ;
struct TYPE_10__ {int y; int x; } ;
typedef TYPE_3__ pli ;
typedef int ll ;
struct TYPE_8__ {int val; } ;


 int IS_UID (int ) ;
 int add_event (TYPE_2__*,char*,int,int,int,int) ;
 int assert (int ) ;
 int critical (char*,int,int,...) ;
 TYPE_2__* get_news_queue (int ,int ) ;
 int insert_to_add (int ,int) ;
 int insert_to_del (int ) ;
 int process_changes (int ,int *,int ,scalar_t__,int,int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int to_add ;
 scalar_t__ to_add_n ;
 int to_del ;
 scalar_t__ to_del_n ;
 TYPE_1__* treap_fnd (int *,int ) ;

void add_event_to_news (ll from_id, int x, int y, int ttl, pli *ids, int idn, char *event, int need_debug) {
  int len = strlen (event), i;

  to_add_n = 0;
  to_del_n = 0;

  for (i = 0; i < idn; i++) {
    if (!IS_UID(ids[i].x)) {
      queue *q = get_news_queue (ids[i].x, 0);

      if (q != ((void*)0)) {
        assert (q->subs != ((void*)0));
        treap_node_ptr v = treap_fnd (q->subs, from_id);

        if (need_debug) {
          critical ("BAD REDIRECT from %lld to %lld[%s](we are here) : ref_cnt = %d, ev_first = %p, keys_cnt = %d, subscr_cnt = %d, ttl = %d\n", from_id, ids[i].x, q->name, q->ref_cnt, q->ev_first, q->keys_cnt, q->subscr_cnt, ttl);
          if (v != ((void*)0)) {
            critical ("  ids[i].y = %d, v->val = %d, x = %d, y = %d, %d =?= %d\n", ids[i].y, v->val, x, y,
                x & v->val, y);
          }
        }
        if (v != ((void*)0)) {
          if (v->val != ids[i].y) {
            insert_to_add (ids[i].x, v->val);

          }

          if ((x & v->val) == y) {
            int yn = sprintf (event + len, "<!>%d", v->val);
            add_event (q, event, len + yn, x, y, ttl);
          }
        } else {
          insert_to_del (ids[i].x);
        }
      } else {
        if (need_debug) {
          critical ("BAD REDIRECT from %lld to NULL, ttl = %d\n", from_id, ttl);
        }
        insert_to_del (ids[i].x);
      }
    }
  }
  process_changes (from_id, ((void*)0), to_add, to_add_n, 1, 1);
  process_changes (from_id, ((void*)0), to_del, to_del_n, 0, 1);
}
