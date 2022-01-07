
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int fd; int In; } ;
typedef int pli ;
typedef int ll ;


 int MAX_VALUE_LEN ;
 int READ_INT (int*,int) ;
 int READ_LONG (int*,int ) ;


 int SKIP_ALL_BYTES ;
 int STAT (int ) ;
 int add_event_to_news (int ,int,int,int,int *,int,char*,int) ;
 int assert (int) ;
 scalar_t__ buf ;
 int fprintf (int ,char*,int,int,int) ;
 int read_in (int *,int*,int) ;
 int rpc_received ;
 int rpc_received_news_redirect ;
 int rpc_received_news_redirect_size ;
 int rpc_received_news_subscr ;
 int rpc_received_news_subscr_size ;
 int rpc_received_size ;
 int stderr ;
 int subscribers_add_new (int ,int *,int) ;
 int subscribers_add_new_rev (int ,int *,int) ;
 int subscribers_del_old (int ,int *,int) ;
 int subscribers_del_rev (int ,int *,int) ;
 scalar_t__ verbosity ;

int rpcs_execute (struct connection *c, int op, int len) {
  if (verbosity > 0) {
    fprintf (stderr, "rpcs_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  }
  int *v = (int *)buf;

  ll id;
  int x, y, ttl, text_n, text_len, n, is_rev, is_add, res;
  char *text;

  STAT (rpc_received);
  rpc_received_size += len;

  switch (op & 0xffff0000) {
  case 128:
    STAT (rpc_received_news_subscr);
    rpc_received_news_subscr_size += len;
    assert (len < MAX_VALUE_LEN);
    assert (read_in (&c->In, v, len) == len);

    is_rev = (op >> 1) & 1,
    is_add = op & 1;
    id = *(ll *)&v[3];
    n = len / sizeof (int) - 4 - 2;
    assert (n % 3 == 0);
    n /= 3;
    pli *p = (pli *)&v[5];

    if (is_add) {

      if (is_rev) {

        res = subscribers_add_new_rev (id, p, n);
      } else {
        res = subscribers_add_new (id, p, n);
      }
    } else {
      if (is_rev) {

        res = subscribers_del_rev (id, p, n);
      } else {
        res = subscribers_del_old (id, p, n);
      }
    }

    return 0;
    break;

  case 129:
    STAT (rpc_received_news_redirect);
    rpc_received_news_redirect_size += len;
    assert (len < MAX_VALUE_LEN);
    assert (read_in (&c->In, v, len) == len);

    v += 3;

    READ_LONG (v, id);
    READ_INT (v, x);
    READ_INT (v, y);
    READ_INT (v, ttl);
    READ_INT (v, n);
    READ_INT (v, text_n);
    text_len = (text_n + 1 + 3) / 4;
    pli *to = (pli *)v;
    v += n * 3;
    text = (char *)v;

    int need_debug = op & 1;


    add_event_to_news (id, x, y, ttl, to, n, text, need_debug);
    return 0;
    break;
  }

  return SKIP_ALL_BYTES;
}
