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
struct connection {int fd; int /*<<< orphan*/  In; } ;
typedef  int /*<<< orphan*/  pli ;
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
#define  RPC_NEWS_REDIRECT 129 
#define  RPC_NEWS_SUBSCR 128 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ buf ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  rpc_received ; 
 int /*<<< orphan*/  rpc_received_news_redirect ; 
 int rpc_received_news_redirect_size ; 
 int /*<<< orphan*/  rpc_received_news_subscr ; 
 int rpc_received_news_subscr_size ; 
 int rpc_received_size ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ verbosity ; 

int FUNC11 (struct connection *c, int op, int len) {
  if (verbosity > 0) {
    FUNC5 (stderr, "rpcs_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  }
  int *v = (int *)buf;

  ll id;
  int x, y, ttl, text_n, text_len, n, is_rev, is_add, res;
  char *text;

  FUNC2 (rpc_received);
  rpc_received_size += len;

  switch (op & 0xffff0000) {
  case RPC_NEWS_SUBSCR:
    FUNC2 (rpc_received_news_subscr);
    rpc_received_news_subscr_size += len;
    FUNC4 (len < MAX_VALUE_LEN);
    FUNC4 (FUNC6 (&c->In, v, len) == len);

    is_rev = (op >> 1) & 1,
    is_add = op & 1;
    id = *(ll *)&v[3];
    n = len / sizeof (int) - 4 - 2;
    FUNC4 (n % 3 == 0);
    n /= 3;
    pli *p = (pli *)&v[5];

    if (is_add) {
      //TODO fix this!!!
      if (is_rev) {
        //assert (!is_rev);
        res = FUNC8 (id, p, n);
      } else {
        res = FUNC7 (id, p, n);
      }
    } else {
      if (is_rev) {
        //assert (!is_rev);
        res = FUNC10 (id, p, n);
      } else {
        res = FUNC9 (id, p, n);
      }
    }

    return 0;
    break;

  case RPC_NEWS_REDIRECT:
    FUNC2 (rpc_received_news_redirect);
    rpc_received_news_redirect_size += len;
    FUNC4 (len < MAX_VALUE_LEN);
    FUNC4 (FUNC6 (&c->In, v, len) == len);

    v += 3;

    FUNC1 (v, id);
    FUNC0 (v, x);
    FUNC0 (v, y);
    FUNC0 (v, ttl);
    FUNC0 (v, n);
    FUNC0 (v, text_n);
    text_len = (text_n + 1 + 3) / 4;
    pli *to = (pli *)v;
    v += n * 3;
    text = (char *)v;

    int need_debug = op & 1;

    // FAIL: TOO MUCH DEBUG DATA dbg ("RECEIVE REDIRECTED NEW: debug = %d, [id = %lld(%d;%d)], [ttl = %d] {%s}", need_debug, id, x, y, ttl, text);
    FUNC3 (id, x, y, ttl, to, n, text, need_debug);
    return 0;
    break;
  }

  return SKIP_ALL_BYTES;
}