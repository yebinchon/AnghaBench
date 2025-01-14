
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts_data {int extra_int3; int query_flags; int extra_int2; int extra_int; } ;
struct connection {scalar_t__ status; int parse_state; } ;


 struct hts_data* HTS_DATA (struct connection*) ;
 int QF_KEEPALIVE ;
 int R ;
 int assert (int) ;
 int clear_connection_timeout (struct connection*) ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_wait_net ;
 scalar_t__ conn_write_close ;
 int get_history (int ,int ,int ,int ) ;
 int get_persistent_history (int ,int ,int ,int ) ;
 int get_persistent_timestamp (int ) ;
 int get_timestamp (int ,int) ;
 int * http_failed ;
 int http_return (struct connection*,char*,int) ;
 int http_return_history (struct connection*,int ,int,int) ;
 int key_user_id ;
 int req_mode ;
 int req_ts ;
 int sprintf (char*,char*,int) ;
 int write_http_error (struct connection*,int) ;

int hts_wakeup (struct connection *c) {
  struct hts_data *D = HTS_DATA(c);
  static char tmp_buff[4096];
  int res, len, new_ts;

  key_user_id = D->extra_int;
  req_ts = D->extra_int2;
  req_mode = D->extra_int3;

  assert (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;
  clear_connection_timeout (c);

  if (!(D->query_flags & QF_KEEPALIVE)) {
    c->status = conn_write_close;
    c->parse_state = -1;
  }

  if (req_mode & 16) {
    res = get_persistent_history (key_user_id, req_ts, 0, R);
    new_ts = get_persistent_timestamp (key_user_id);
  } else {
    res = get_history (key_user_id, req_ts, 0, R);
    new_ts = get_timestamp (key_user_id, 1);
  }

  if (new_ts < 0) {
    http_failed[3]++;
    http_return (c, "{\"failed\":3}\r\n", -1);
    return 0;
  }

  if (res < 0) {
    http_failed[1]++;
    len = sprintf (tmp_buff, "{\"failed\":1,\"ts\":%d}\r\n", new_ts);
    http_return (c, tmp_buff, len);
    return 0;
  }
  res = http_return_history (c, R, res, new_ts);

  if (res < 0) {
    write_http_error (c, -res);
  }

  return 0;
}
