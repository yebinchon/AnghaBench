#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpcc_data {unsigned int packet_len; unsigned int packet_num; unsigned int packet_crc32; unsigned int in_packet_num; scalar_t__ packet_type; } ;
struct TYPE_4__ {int total_bytes; } ;
struct connection {scalar_t__ status; int error; int fd; TYPE_1__ In; int /*<<< orphan*/  Q; } ;
struct TYPE_5__ {int max_packet_len; int (* rpc_ready ) (struct connection*) ;int (* execute ) (struct connection*,scalar_t__,int) ;} ;

/* Variables and functions */
 struct rpcc_data* FUNC0 (struct connection*) ; 
 TYPE_3__* FUNC1 (struct connection*) ; 
 scalar_t__ RPC_PING ; 
 int SKIP_ALL_BYTES ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ conn_error ; 
 void* conn_reading_answer ; 
 scalar_t__ conn_running ; 
 scalar_t__ conn_wait_answer ; 
 unsigned int FUNC4 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_disable_crc32_check ; 
 int FUNC13 (struct connection*,scalar_t__,int) ; 
 int FUNC14 (struct connection*) ; 
 int FUNC15 (struct connection*) ; 
 int FUNC16 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC17 (struct connection*) ; 
 int FUNC18 (struct connection*,scalar_t__,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC19 (int,char*,unsigned int,...) ; 

int FUNC20 (struct connection *c) {
  struct rpcc_data *D = FUNC0(c);
  int len;

  while (1) {
    len = FUNC12 (&c->Q);
    if (len <= 0) {
      break;
    }
    if (!D->packet_len) {
      if (len < 4) {
        c->status = conn_reading_answer;
        return 4 - len;
      }
      FUNC3 (FUNC9 (&c->Q, &D->packet_len, 4) == 4);
      len -= 4;
      if (D->packet_len <= 0 || (D->packet_len & 3) || (D->packet_len > FUNC1(c)->max_packet_len && FUNC1(c)->max_packet_len > 0)) {
	FUNC19 (1, "error while parsing packet: bad packet length %d\n", D->packet_len);
        c->status = conn_error;
        c->error = -1;
        return 0;
      }
    }
    if (D->packet_len == 4) {
      FUNC3 (FUNC2 (&c->In, 4) == 4);
      D->packet_len = 0;
      FUNC11 (&c->Q, &c->In);
      continue;
    }
    if (D->packet_len < 16) {
      FUNC19 (1, "error while parsing packet: bad packet length %d\n", D->packet_len);
      c->status = conn_error;
      c->error = -1;
      return 0;
    }
    if (len + 4 < D->packet_len) {
      c->status = conn_reading_answer;
      return D->packet_len - len - 4;
    }
    FUNC3 (FUNC9 (&c->Q, &D->packet_num, 8) == 8);    
    unsigned crc32 = !rpc_disable_crc32_check ? FUNC4 (&D->packet_len, 12, -1) : 0;
    len = D->packet_len - 16;
    while (len > 0) {
      int l = FUNC10 (&c->Q);
      char *ptr = FUNC8 (&c->Q);
      if (l > len) {
        l = len;
      }
      FUNC3 (l > 0);
      if (!rpc_disable_crc32_check) {
        crc32 = FUNC4 (ptr, l, crc32);
      }
      len -= l;
      FUNC3 (FUNC7 (&c->Q, l) == l);
    }
    FUNC3 (!len);
    FUNC3 (FUNC9 (&c->Q, &D->packet_crc32, 4) == 4);
    if (~crc32 != D->packet_crc32 && !rpc_disable_crc32_check) {
      FUNC19 (1, "error while parsing packet: crc32 = %08x != %08x\n", ~crc32, D->packet_crc32);
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

    if (D->packet_num != D->in_packet_num) {
      FUNC19 (1, "error while parsing packet: got packet num %d, expected %d\n", D->packet_num, D->in_packet_num);
      c->status = conn_error;
      c->error = -1;
      return 0;
    } else if (D->packet_num < 0) {
      /* this is for us */
      if (D->packet_num == -2) {
        c->status = conn_running;
        res = FUNC15 (c);
        if (res >= 0) {
          res = FUNC16 (c);
          //fprintf (stderr, "send_handshake_packet returned %d\n", res);
        }
      } else if (D->packet_num == -1) {
        c->status = conn_running;
        res = FUNC14 (c);
        if (res >= 0 && FUNC1(c)->rpc_ready) {
          res = FUNC1(c)->rpc_ready (c);
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
        res = FUNC13 (c, D->packet_type, D->packet_len);
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
    D->packet_len = 0;
    if (c->status == conn_running) {
      c->status = conn_wait_answer;
    }
    if (c->status != conn_wait_answer) {
      break;
    }
    FUNC11 (&c->Q, &c->In);
  }
  return 0;
}