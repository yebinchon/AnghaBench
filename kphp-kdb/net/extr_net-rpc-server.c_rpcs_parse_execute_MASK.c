#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpcs_data {unsigned int packet_len; int crypto_flags; int flags; int in_packet_num; unsigned int packet_num; unsigned int packet_crc32; scalar_t__ packet_type; } ;
struct TYPE_6__ {int total_bytes; } ;
struct connection {scalar_t__ status; int fd; int error; TYPE_2__ In; int /*<<< orphan*/  Q; scalar_t__ pending_queries; TYPE_1__* type; int /*<<< orphan*/  extra; int /*<<< orphan*/  custom_data; } ;
struct TYPE_7__ {int max_packet_len; int (* rpc_ready ) (struct connection*) ;int (* execute ) (struct connection*,scalar_t__,int) ;int /*<<< orphan*/  http_fallback_extra; TYPE_1__* http_fallback_type; int /*<<< orphan*/  memcache_fallback_extra; TYPE_1__* memcache_fallback_type; } ;
struct TYPE_5__ {scalar_t__ (* init_accepted ) (struct connection*) ;int (* parse_execute ) (struct connection*) ;} ;

/* Variables and functions */
 struct rpcs_data* FUNC0 (struct connection*) ; 
 TYPE_4__* FUNC1 (struct connection*) ; 
 scalar_t__ RPC_PING ; 
 int SKIP_ALL_BYTES ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ conn_error ; 
 scalar_t__ conn_expect_query ; 
 void* conn_reading_query ; 
 scalar_t__ conn_running ; 
 scalar_t__ conn_wait_aio ; 
 scalar_t__ conn_wait_net ; 
 unsigned int FUNC4 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_disable_crc32_check ; 
 int FUNC14 (struct connection*,scalar_t__,int) ; 
 int FUNC15 (struct connection*) ; 
 int FUNC16 (struct connection*) ; 
 int FUNC17 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC18 (struct connection*) ; 
 int FUNC19 (struct connection*) ; 
 scalar_t__ FUNC20 (struct connection*) ; 
 int FUNC21 (struct connection*) ; 
 int FUNC22 (struct connection*) ; 
 int FUNC23 (struct connection*,scalar_t__,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC24 (int,char*,int,...) ; 

int FUNC25 (struct connection *c) {
  struct rpcs_data *D = FUNC0(c);
  int len;

  while (1) {
    len = FUNC13 (&c->Q);
    if (len <= 0) {
      break;
    }
    // fprintf (stderr, "in while : packet_len=%d, total_ready_bytes=%d; cptr=%p; c->status=%d\n", D->packet_len, len, c->Q.cptr, c->status);
    if (!D->packet_len) {
      if (len < 4) {
        c->status = conn_reading_query;
        return 4 - len;
      }
      FUNC3 (FUNC10 (&c->Q, &D->packet_len, 4) == 4);
      // fprintf (stderr, "reading packet len [ = %d]\n", D->packet_len);
      len -= 4;
      if (D->crypto_flags & 512) {
	D->flags = (D->flags & 0x7fffffff) | (D->packet_len & 0x80000000);
	D->packet_len &= 0x7fffffff;
      }
      if (D->packet_len <= 0 || (D->packet_len & 0xc0000003)) {
        if (D->in_packet_num <= -2 && (D->packet_len == 0x656c6564 || D->packet_len == 0x74617473 || D->packet_len == 0x73726576 || D->packet_len == 0x20746567 || D->packet_len == 0x20746573 || D->packet_len == 0x20646461
                                                                   || D->packet_len == 0x6c706572 || D->packet_len == 0x72636e69 || D->packet_len == 0x72636564) && FUNC1(c)->memcache_fallback_type) {
	  FUNC24 (1, "switching to memcache fallback for connection %d\n", c->fd);
          FUNC7 (c->custom_data, 0, sizeof (c->custom_data));
          c->type = FUNC1(c)->memcache_fallback_type;
          c->extra = FUNC1(c)->memcache_fallback_extra;
          if (c->type->init_accepted (c) < 0) {
	    FUNC24 (1, "memcache init_accepted() returns error for connection %d\n", c->fd);
            c->status = conn_error;
            c->error = -33;
            return 0;
          }
          FUNC12 (&c->Q, &c->In);
          return c->type->parse_execute (c);
        }
        if (D->in_packet_num <= -2 && (D->packet_len == 0x44414548 || D->packet_len == 0x54534f50 || D->packet_len == 0x20544547) && FUNC1(c)->http_fallback_type) {
	  FUNC24 (1, "switching to http fallback for connection %d\n", c->fd);
          FUNC7 (c->custom_data, 0, sizeof (c->custom_data));
          c->type = FUNC1(c)->http_fallback_type;
          c->extra = FUNC1(c)->http_fallback_extra;
          if (c->type->init_accepted (c) < 0) {
	    FUNC24 (1, "http init_accepted() returns error for connection %d\n", c->fd);
            c->status = conn_error;
            c->error = -33;
            return 0;
          }
          FUNC12 (&c->Q, &c->In);
          return c->type->parse_execute (c);
        }
	FUNC24 (1, "error while parsing packet: bad packet length %d\n", D->packet_len);
        c->status = conn_error;
        c->error = -1;
        return 0;
      }
      if (D->packet_len > FUNC1(c)->max_packet_len && FUNC1(c)->max_packet_len > 0) {
	FUNC24 (1, "error while parsing packet: bad packet length %d\n", D->packet_len);
	c->status = conn_error;
	c->error = -1;
	return 0;
      }
    }
    if (D->packet_len == 4) {
      FUNC3 (FUNC2 (&c->In, 4) == 4);
      D->packet_len = 0;
      FUNC12 (&c->Q, &c->In);
      continue;
    }
    if (D->packet_len < 16) {
      FUNC24 (1, "error while parsing packet: bad packet length %d\n", D->packet_len);
      c->status = conn_error;
      c->error = -1;
      return 0;
    }
    if (len + 4 < D->packet_len) {
      //fprintf (stderr, "need %d bytes, only %d present; need %d more\n", D->packet_len, len + 4, D->packet_len - len - 4);
      c->status = conn_reading_query;
      return D->packet_len - len - 4;
    }
    FUNC3 (FUNC10 (&c->Q, &D->packet_num, 8) == 8);
    unsigned crc32 = 0;
    if (!rpc_disable_crc32_check) {
      crc32 = FUNC4 (&D->packet_len, 12, -1);
      if ((D->flags < 0) && (D->crypto_flags & 512)) {
	crc32 ^= 0x1d80c620 ^ 0x7bd5c66f;
      }
    }

    //fprintf (stderr, "num = %d, len = %d\n", D->packet_num, D->packet_len);

    len = D->packet_len - 16;
    while (len > 0) {
      int l = FUNC11 (&c->Q);
      char *ptr = FUNC9 (&c->Q);
      if (l > len) {
        l = len;
      }
      FUNC3 (l > 0);
      if (!rpc_disable_crc32_check) {
        crc32 = FUNC4 (ptr, l, crc32);
      }
      len -= l;
      FUNC3 (FUNC8 (&c->Q, l) == l);
    }
    FUNC3 (!len);
    FUNC3 (FUNC10 (&c->Q, &D->packet_crc32, 4) == 4);
    //fprintf (stderr, "check : crc32 = %08x ?= %08x\n", ~crc32, D->packet_crc32);
    if (~crc32 != D->packet_crc32 && !rpc_disable_crc32_check) {
      if (verbosity > 0) {
        FUNC5 (c);
        FUNC6 (stderr, "error while parsing packet: crc32 = %08x != %08x\n", ~crc32, D->packet_crc32);
      }
      c->status = conn_error;
      c->error = -1;
      return 0;
    }

    if (verbosity > 2) {
      FUNC6 (stderr, "received packet from connection %d\n", c->fd);
      FUNC5 (c);
    }

    int keep_total_bytes = c->In.total_bytes;
    int res = -1;

    if (D->in_packet_num == -3) {
      D->in_packet_num = 0;
    }

    if (!(D->crypto_flags & 256) && D->packet_num != D->in_packet_num) {
      FUNC24 (1, "error while parsing packet: got packet num %d, expected %d\n", D->packet_num, D->in_packet_num);
      c->status = conn_error;
      c->error = -1;
      return 0;
    } else if (D->packet_num < 0) {
      /* this is for us */
      if (D->packet_num == -2) {
        c->status = conn_running;
        res = FUNC16 (c);  // if res > 0, nonce packet sent in response
      } else if (D->packet_num == -1) {
        c->status = conn_running;
        res = FUNC15 (c);
        if (res >= 0) {
          res = FUNC17 (c);
          if (res >= 0 && FUNC1(c)->rpc_ready) {
            res = FUNC1(c)->rpc_ready (c);
          }
        }
      }
      if (res < 0) {
        c->status = conn_error;
        c->error = res;
        return 0;
      }
    } else {
      /* main case */
      c->status = conn_running;
      if (D->packet_type == RPC_PING) {
        res = FUNC14 (c, D->packet_type, D->packet_len);
      } else {
        res = FUNC1(c)->execute (c, D->packet_type, D->packet_len);
      }
    }

    if (c->status == conn_error) {
      if (!c->error) {
        c->error = -2;
      }
      return 0;
    }

    if (res == SKIP_ALL_BYTES) {
      FUNC3 (keep_total_bytes == c->In.total_bytes);
      FUNC2 (&c->In, D->packet_len);
      D->in_packet_num++;
    } else if (keep_total_bytes != c->In.total_bytes) {
      FUNC3 (keep_total_bytes == c->In.total_bytes + D->packet_len);
      D->in_packet_num++;
    }

    if (c->status == conn_running) {
      c->status = conn_expect_query;
    }

    //assert ((c->pending_queries && (c->status == conn_wait_net || c->status == conn_wait_aio)) || (!c->pending_queries && c->status == conn_expect_query));
    FUNC3 (c->status == conn_wait_net || (c->pending_queries && c->status == conn_wait_aio) || (!c->pending_queries && c->status == conn_expect_query));

    D->packet_len = 0;
    if (c->status != conn_expect_query) {
      break;
    }
    FUNC12 (&c->Q, &c->In);
  }
  return 0;
}