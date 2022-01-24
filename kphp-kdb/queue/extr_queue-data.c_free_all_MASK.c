#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ ev_first; } ;
typedef  TYPE_1__ queue ;
struct TYPE_8__ {struct TYPE_8__* next_time; scalar_t__ lock; int /*<<< orphan*/  timeout; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int TIME_TABLE_SIZE ; 
 int /*<<< orphan*/  alias ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  cr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 long long FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,long long) ; 
 int /*<<< orphan*/  h_qkey ; 
 int /*<<< orphan*/  h_queue ; 
 int /*<<< orphan*/  h_subscribers ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int http_sfd ; 
 scalar_t__ keys_cnt ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_1__* qs ; 
 int /*<<< orphan*/  secrets ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__** time_st ; 
 long long FUNC14 () ; 
 scalar_t__ verbosity ; 

void FUNC15 (void) {
  if (verbosity) {
    //TODO close all connections
    if (http_sfd != -1) {
      FUNC7 (http_sfd);
      FUNC0 (FUNC1 (http_sfd) >= 0);
    }

    keys_cnt += TIME_TABLE_SIZE;
    int i;
    for (i = 0; i < TIME_TABLE_SIZE; i++) {
      while (time_st[i]->next_time != time_st[i]) {
        if (time_st[i]->next_time->lock) {
          FUNC2 ("Problem with key[%s] timeout = %d\n", time_st[i]->next_time->name,
               time_st[i]->next_time->timeout);
        }
        FUNC0 (!time_st[i]->next_time->lock);
//        fprintf (stderr, "delete qkey\n");
        FUNC3 (time_st[i]->next_time);
      }
      FUNC12 (time_st[i]);
    }
    FUNC0 (keys_cnt == 0);

//    fprintf (stderr, "qs = %p %ld\n", qs, sizeof (queue));
    while (qs != NULL) {
      queue *q = qs;
      qs = (queue *)qs->ev_first;
      FUNC5 (q, sizeof (queue));
    }

    FUNC13 (&h_queue);
    FUNC13 (&h_qkey);
    FUNC10 (&secrets);
    FUNC11 (&alias);

    FUNC9 (&h_subscribers);

    FUNC4 (&cr);

    long long left_memory = FUNC6() - FUNC14();

    FUNC8 (stderr, "Memory left: %lld\n", left_memory);
    FUNC0 (left_memory == 0);
  }
}