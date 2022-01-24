#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct conn_query {int dummy; } ;
struct TYPE_9__ {char* x; TYPE_2__* y; } ;
typedef  TYPE_1__ shmap_pair_string_vptr ;
struct TYPE_10__ {char* name; int /*<<< orphan*/  id; int /*<<< orphan*/ * ev_last; int /*<<< orphan*/  ev_first; struct conn_query* last_q; struct conn_query* first_q; } ;
typedef  TYPE_2__ queue ;
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 int /*<<< orphan*/  ZERO_UID ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  h_queue ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 () ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,TYPE_1__) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  str_memory ; 

inline queue *FUNC9 (char *name, int force) {
  shmap_pair_string_vptr a, *b;
  a.y = NULL;
  a.x = name;

  queue *q = NULL;
  if (force) {
    b = FUNC7 (&h_queue, a);
    if (b->y == NULL) {
      str_memory -= FUNC2();
      b->x = FUNC3 (b->x);
      str_memory += FUNC2();

      q = b->y = FUNC6();

      q->name = b->x;
      q->first_q = q->last_q = (struct conn_query *) q;

      q->ev_first = *(q->ev_last = NULL); // Yep. It will be list with 'if'

/*      if (get_qtype (name) == Q_NEWS) {
        q->id = get_news_s_id (name);
      } else {*/
        q->id = FUNC4();
/*      }*/

      FUNC1 ("ALIAS for [%s] = %lld\n", name, q->id);
      ll tid = q->id;

      if (tid == 0) {
        tid = ZERO_UID;
      }

      FUNC1 ("add alias : %lld\n", tid);
      queue **tq = (queue **)FUNC5 (&alias, tid);
      FUNC0 (*tq == NULL);
      *tq = q;
    } else {
      q = b->y;
    }
  } else {
    //fprintf (stderr, "GET queue [%s]\n", name);
    b = FUNC8 (&h_queue, a);
    if (b != NULL) {
      q = b->y;
    }
  }

  return q;
}