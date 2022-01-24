#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hts_data {int extra_int; int extra_int2; int extra_int3; int query_flags; int /*<<< orphan*/ * extra; } ;
struct connection {scalar_t__ status; int parse_state; } ;
typedef  int /*<<< orphan*/  metafile_t ;

/* Variables and functions */
 struct hts_data* FUNC0 (struct connection*) ; 
 int QF_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_wait_aio ; 
 scalar_t__ conn_write_close ; 
 int FUNC3 (struct connection*,int /*<<< orphan*/ *,long long,int) ; 
 int /*<<< orphan*/  FUNC4 (long long*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct connection*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*,int) ; 

int FUNC7 (struct connection *c) {
  FUNC5 (3, "hts_wakeup (%p, c->status = %d)\n", c, c->status);
  struct hts_data *D = FUNC0(c);
  int t[2];
  t[0] = D->extra_int;
  t[1] = D->extra_int2;
  long long secret;
  FUNC4 (&secret, &t[0], 8);
  int content_type = D->extra_int3;

  FUNC1 (c->status == conn_expect_query || c->status == conn_wait_aio);
  c->status = conn_expect_query;
  FUNC2 (c);

  if (!(D->query_flags & QF_KEEPALIVE)) {
    c->status = conn_write_close;
    c->parse_state = -1;
  }
  metafile_t *meta = D->extra;
  int res = FUNC3 (c, meta, secret, content_type);
  if (res < 0) {
    FUNC6 (c, -res);
  }
  return 0;
}