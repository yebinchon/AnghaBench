#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ size; } ;
typedef  TYPE_1__ treap ;
typedef  int /*<<< orphan*/  pli ;
typedef  int /*<<< orphan*/  ll ;
struct TYPE_9__ {int /*<<< orphan*/  x; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEF ; 
 int MAX_SUBSCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  changes_add_cnt ; 
 int changes_add_len ; 
 int /*<<< orphan*/  changes_add_rev_cnt ; 
 int changes_add_rev_len ; 
 int /*<<< orphan*/  changes_del_cnt ; 
 int changes_del_len ; 
 int /*<<< orphan*/  changes_del_rev_cnt ; 
 int changes_del_rev_len ; 
 int /*<<< orphan*/  changes_len_max ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int engine_n ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  process_changes_cnt ; 
 int process_changes_total_len ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_4__* sb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  treap_cnt ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC10 (ll id, treap *t, pli *a, int n, int is_add, int is_rev) {
  if (n == 0) {
    return;
  }

  if (n > MAX_SUBSCR) {
    FUNC4 (LOG_DEF, 0, "Too many subscribers %d [id = %lld]\n", n, id);
    n = MAX_SUBSCR;
  }
  FUNC2 (a, n, sb);

  FUNC0 (process_changes_cnt);
  FUNC1 (changes_len_max, n);
  process_changes_total_len += n;

  if (is_add) {
    if (is_rev) {
       FUNC0 (changes_add_rev_cnt);
       changes_add_rev_len += n;
    } else {
       FUNC0 (changes_add_cnt);
       changes_add_len += n;
    }
  } else {
    if (is_rev) {
       FUNC0 (changes_del_rev_cnt);
       changes_del_rev_len += n;
    } else {
       FUNC0 (changes_del_cnt);
       changes_del_len += n;
    }
  }

  int i, j, f = 0;
  for (i = j = 0; i <= n; i++) {
    if (i < n) {
      //dbg ("CHNG TO SEND : %lld %s (%lld;%d)\n", id, is_add ? "add" : "del", sb[i].x, sb[i].y);

      if (t != NULL) {
        treap_cnt += t->size;
//          dbg ("add subsc_local %d->[%d,%d] (treap : %p %d)\n",
//                  id, sb[i].x, sb[i].y, t, t->size);
        if (is_add) {
          FUNC8 (t, sb[i].x, sb[i].y, FUNC6());
        } else {
          FUNC9 (t, sb[i].x);
        }

        treap_cnt -= t->size;
      }
    }
    if (i == n || FUNC3 (sb[i].x) % engine_n != FUNC3 (sb[j].x) % engine_n) {
      FUNC7 (id, sb + j, i - j, is_add, is_rev);
      f = 1;
      j = i;
    }
  }
  if (f) {
    FUNC5();
  }
}