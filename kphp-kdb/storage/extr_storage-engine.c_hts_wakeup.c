
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hts_data {int extra_int; int extra_int2; int extra_int3; int query_flags; int * extra; } ;
struct connection {scalar_t__ status; int parse_state; } ;
typedef int metafile_t ;


 struct hts_data* HTS_DATA (struct connection*) ;
 int QF_KEEPALIVE ;
 int assert (int) ;
 int clear_connection_timeout (struct connection*) ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_wait_aio ;
 scalar_t__ conn_write_close ;
 int http_return_file (struct connection*,int *,long long,int) ;
 int memcpy (long long*,int*,int) ;
 int vkprintf (int,char*,struct connection*,scalar_t__) ;
 int write_http_error (struct connection*,int) ;

int hts_wakeup (struct connection *c) {
  vkprintf (3, "hts_wakeup (%p, c->status = %d)\n", c, c->status);
  struct hts_data *D = HTS_DATA(c);
  int t[2];
  t[0] = D->extra_int;
  t[1] = D->extra_int2;
  long long secret;
  memcpy (&secret, &t[0], 8);
  int content_type = D->extra_int3;

  assert (c->status == conn_expect_query || c->status == conn_wait_aio);
  c->status = conn_expect_query;
  clear_connection_timeout (c);

  if (!(D->query_flags & QF_KEEPALIVE)) {
    c->status = conn_write_close;
    c->parse_state = -1;
  }
  metafile_t *meta = D->extra;
  int res = http_return_file (c, meta, secret, content_type);
  if (res < 0) {
    write_http_error (c, -res);
  }
  return 0;
}
