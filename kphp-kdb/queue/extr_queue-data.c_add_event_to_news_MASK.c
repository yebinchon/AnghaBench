#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* treap_node_ptr ;
struct TYPE_9__ {int /*<<< orphan*/  subscr_cnt; int /*<<< orphan*/  keys_cnt; int /*<<< orphan*/  ev_first; int /*<<< orphan*/  ref_cnt; int /*<<< orphan*/  name; int /*<<< orphan*/ * subs; } ;
typedef  TYPE_2__ queue ;
struct TYPE_10__ {int y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ pli ;
typedef  int /*<<< orphan*/  ll ;
struct TYPE_8__ {int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,...) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  to_add ; 
 scalar_t__ to_add_n ; 
 int /*<<< orphan*/  to_del ; 
 scalar_t__ to_del_n ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11 (ll from_id, int x, int y, int ttl, pli *ids, int idn, char *event, int need_debug) {
  int len = FUNC9 (event), i;

  to_add_n = 0;
  to_del_n = 0;

  for (i = 0; i < idn; i++) {
    if (!FUNC0(ids[i].x)) {
      queue *q = FUNC4 (ids[i].x, 0);

      if (q != NULL) {
        FUNC2 (q->subs != NULL);
        treap_node_ptr v = FUNC10 (q->subs, from_id);

        if (need_debug) {
          FUNC3 ("BAD REDIRECT from %lld to %lld[%s](we are here) : ref_cnt = %d, ev_first = %p, keys_cnt = %d, subscr_cnt = %d, ttl = %d\n", from_id, ids[i].x, q->name, q->ref_cnt, q->ev_first, q->keys_cnt, q->subscr_cnt, ttl);
          if (v != NULL) {
            FUNC3 ("  ids[i].y = %d, v->val = %d, x = %d, y = %d, %d =?= %d\n", ids[i].y, v->val, x, y,
                x & v->val, y);
          }
        }
        if (v != NULL) {
          if (v->val != ids[i].y) {
            FUNC5 (ids[i].x, v->val);
            //dbg ("ADD %lld->%lld\n", ids[i].x, from_id);
          }

          if ((x & v->val) == y) {
            int yn = FUNC8 (event + len, "<!>%d", v->val);
            FUNC1 (q, event, len + yn, x, y, ttl);
          }
        } else {
          FUNC6 (ids[i].x);
        }
      } else {
        if (need_debug) {
          FUNC3 ("BAD REDIRECT from %lld to NULL, ttl = %d\n", from_id, ttl);
        }
        FUNC6 (ids[i].x);
      }
    }
  }
  FUNC7 (from_id, NULL, to_add, to_add_n, 1, 1);
  FUNC7 (from_id, NULL, to_del, to_del_n, 0, 1);
}