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
struct hts_data {int extra_int3; int query_flags; int /*<<< orphan*/  extra_int2; int /*<<< orphan*/  extra_int; } ;
struct connection {scalar_t__ status; int parse_state; } ;

/* Variables and functions */
 struct hts_data* FUNC0 (struct connection*) ; 
 int QF_KEEPALIVE ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_wait_net ; 
 scalar_t__ conn_write_close ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * http_failed ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,char*,int) ; 
 int FUNC8 (struct connection*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  key_user_id ; 
 int req_mode ; 
 int /*<<< orphan*/  req_ts ; 
 int FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*,int) ; 

int FUNC11 (struct connection *c) {
  struct hts_data *D = FUNC0(c);
  static char tmp_buff[4096];
  int res, len, new_ts;

  key_user_id = D->extra_int;
  req_ts = D->extra_int2;
  req_mode = D->extra_int3;

  FUNC1 (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;
  FUNC2 (c);

  if (!(D->query_flags & QF_KEEPALIVE)) {
    c->status = conn_write_close;
    c->parse_state = -1;
  }

  if (req_mode & 16) {
    res = FUNC4 (key_user_id, req_ts, 0, R);
    new_ts = FUNC5 (key_user_id);
  } else {
    res = FUNC3 (key_user_id, req_ts, 0, R);
    new_ts = FUNC6 (key_user_id, 1);
  }

  if (new_ts < 0) {
    http_failed[3]++;
    FUNC7 (c, "{\"failed\":3}\r\n", -1);
    return 0;
  }

  if (res < 0) {
    http_failed[1]++;
    len = FUNC9 (tmp_buff, "{\"failed\":1,\"ts\":%d}\r\n", new_ts);
    FUNC7 (c, tmp_buff, len);
    return 0;
  }
  res = FUNC8 (c, R, res, new_ts);

  if (res < 0) {
    FUNC10 (c, -res);
  }

  return 0;
}