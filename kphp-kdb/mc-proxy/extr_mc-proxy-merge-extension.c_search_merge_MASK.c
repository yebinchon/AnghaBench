#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct memcache_server_functions {TYPE_2__* info; } ;
struct gather_data {int ready_num; int wait_num; double start_time; } ;
struct connection {int /*<<< orphan*/  In; } ;
struct conn_query {scalar_t__ req_generation; int extra; TYPE_1__* requester; } ;
struct TYPE_4__ {int /*<<< orphan*/  mc_proxy_inbound; } ;
struct TYPE_3__ {scalar_t__ generation; int /*<<< orphan*/ * extra; } ;

/* Variables and functions */
 TYPE_2__* CC ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int DATA_BUFF_LEN ; 
 struct gather_data* FUNC0 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct conn_query*,int*,int) ; 
 char* cur_key ; 
 int* data_buff ; 
 int /*<<< orphan*/  FUNC3 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC4 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct conn_query* FUNC7 (struct connection*,int*,int) ; 
 double FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct conn_query*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC11 (struct connection *c, int data_len) {
  FUNC1 (data_len <= DATA_BUFF_LEN);
  
  FUNC1 (FUNC10 (&c->In, data_buff, data_len) == data_len);
  if (verbosity >= 4) {
    int i;
    for (i = 0; i < data_len; i++) 
      FUNC5 (stderr, "%c[%d]", data_buff[i], data_buff[i]);
    FUNC5 (stderr, "\n");
  }
  FUNC6 (&c->In);

  int data_shift = 0;
  while (data_shift < data_len && data_buff[data_shift] != 13) {
    data_shift++;
  }
  if (data_shift >= data_len-1) {
    FUNC5 (stderr, "data_shift = %d\n", data_shift);
    return -1;
  }
  data_shift += 2;
  if (data_buff[data_shift-1] != 10) {
    FUNC5 (stderr, "data_buff[] = %d\n", data_buff[data_shift-1]);
    return -1;
  }

  struct conn_query *q = FUNC7 (c, data_buff, data_len);

  if (!q) {
    FUNC5 (stderr, "Error in search_merge: cannot find query for answer. Dropping answer.\n");
    return 0;
  }

  if (!q->requester || q->req_generation != q->requester->generation) {
    FUNC5 (stderr, "Error in search_merge: generations do not match. Dropping answer. (key = %s).\n", cur_key);
    FUNC9 (q, 0);
    return 0;
  }

  struct conn_query *Q = (struct conn_query*)q->extra; 
  if (!Q) {
    FUNC5 (stderr, "Error in search_merge: no parent query. Dropping answer. (key = %s).\n", cur_key);
    FUNC9 (q, 0);
    return 0;
  }
  FUNC1 (q->requester == Q->requester);
  FUNC1 (Q->extra);


  CC = ((struct memcache_server_functions *) (Q->requester)->extra)->info;
  FUNC1 (CC && &CC->mc_proxy_inbound == (Q->requester)->extra);
  
  FUNC2 (q, data_buff + data_shift, data_len - data_shift);
  FUNC9 (q, 1);

  if (verbosity >= 4) {
    FUNC5 (stderr, "end of search_merge\n");
  }

  struct gather_data *G = FUNC0(Q);
  if (verbosity >= 2) {
  	FUNC5 (stderr, "got answer %d of %d in %.08f seconds\n", G->ready_num, G->wait_num, FUNC8(CLOCK_MONOTONIC) - G->start_time);
  }

  if (G->wait_num == G->ready_num) {
    FUNC4 (Q);
    if (verbosity >= 4) {
      FUNC5 (stderr, "All answers gathered. Deleting master query.\n");
    }
    //query_complete (Q->requester, 1);
    FUNC3 (Q);
  }

  return 1;
}