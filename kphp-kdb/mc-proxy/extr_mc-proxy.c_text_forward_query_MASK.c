#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct connection {int fd; int /*<<< orphan*/  Out; int /*<<< orphan*/  query_start_time; } ;
struct conn_target {int dummy; } ;
struct conn_query {int custom_type; } ;
struct TYPE_6__ {int tot_buckets; int step; int cluster_mode; int a_req; int a_sbytes; int t_req; int t_sbytes; TYPE_1__* listening_connection; int /*<<< orphan*/  set_timeout; struct conn_target** buckets; } ;
struct TYPE_5__ {int query_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  generation; int /*<<< orphan*/  query_start_time; } ;

/* Variables and functions */
 TYPE_3__* CC ; 
 int CLUSTER_MODE_FIRSTINT ; 
 int MAX_USER_FRIENDS ; 
 TYPE_2__* FUNC0 (struct connection*) ; 
 size_t* RR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct conn_query* FUNC2 (struct connection*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int diagonal_forwarded_total ; 
 int /*<<< orphan*/  diagonal_received_queries ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct connection* FUNC5 (struct conn_target*) ; 
 int FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,...) ; 

int FUNC9 (char *key, int key_len, int N, int *A, struct connection *c) {
  int i, tb = CC->tot_buckets, j, res = 0, k, st = CC->step > 0 ? CC->step : 1, cur_forwarded_queries = 0, cur_forwarded_bytes = 0;
  struct connection *d;
  struct conn_query *Q;
  struct conn_target *S;

  if (verbosity > 0) {
    FUNC4 (stderr, "in text_forward_query(%s, %d, %d; %d %d %d)\n", key, c->fd, N, A[0], A[1], A[2]);
  }

  ++diagonal_received_queries;

  if (N <= 0 || N >= MAX_USER_FRIENDS || !tb || (CC->cluster_mode & 255) != CLUSTER_MODE_FIRSTINT) {
    return 0;
  }
  FUNC1 (A && key);
  for (i = 0; i < N; i++) {
    RR[i] = (A[i] / st) % tb;
  }

  CC->listening_connection->query_start_time = c->query_start_time;

  FUNC7 (A, 0, N - 1);
  RR[N] = tb;
  j = 0;
  for (i = 1; i <= N; i++) {
    if (RR[i] != RR[i - 1]) {
      if (RR[j] >= 0) {
        A[j - 1] = i - j;
        S = CC->buckets[RR[j]];
        d = FUNC5 (S);
        if (d) {
          Q = FUNC2 (d, CC->listening_connection, CC->set_timeout);
          Q->custom_type = FUNC0(c)->query_type | 0x2000;

          if (verbosity > 1) {
            FUNC4 (stderr, "Forwarded online friends list (key = %s) to bucket %zu:", key, RR[j]);
            for (k = j - 1; k < i; k++) {
              FUNC4 (stderr, " %d", A[k]);
            }
            FUNC4 (stderr, "\n");
          }

          static char sm_buff[32];
          int l = FUNC6 (sm_buff, " 0 0 %d\r\n", (i - j + 1) * 4);

          FUNC8 (&d->Out, "set ", 4);
          FUNC8 (&d->Out, key, key_len);
          FUNC8 (&d->Out, sm_buff, l);
          FUNC8 (&d->Out, A + (j - 1), (i - j + 1) * 4);
          FUNC8 (&d->Out, "\r\n", 2);

	  cur_forwarded_queries++;
	  cur_forwarded_bytes += 4 + key_len + l + (i - j + 1) * 4 + 2;

          res += i - j;

          FUNC3 (d);
        }
      }
      j = i;
    }
  }

  if (res) {
    CC->a_req += cur_forwarded_queries;
    CC->a_sbytes += cur_forwarded_bytes;
    CC->t_req += cur_forwarded_queries;
    CC->t_sbytes += cur_forwarded_bytes;
    diagonal_forwarded_total += res;
    CC->listening_connection->generation++;
  }

  return res;
}