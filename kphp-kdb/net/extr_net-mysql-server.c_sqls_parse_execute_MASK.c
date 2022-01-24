#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sqls_data {int packet_state; unsigned int packet_len; unsigned int output_packet_seq; unsigned int packet_seq; int block_size; int packet_padding; scalar_t__ auth_state; int crypto_flags; int auth_user; } ;
struct TYPE_7__ {int total_bytes; scalar_t__ pptr; } ;
struct connection {int fd; int flags; int status; int error; int /*<<< orphan*/  Q; TYPE_2__ In; TYPE_1__* type; scalar_t__ crypto; } ;
struct TYPE_8__ {int (* sql_start_crypto ) (struct connection*,char*,int) ;int (* execute ) (struct connection*,int) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* crypto_decrypt_input ) (struct connection*) ;} ;

/* Variables and functions */
 int C_FAILED ; 
 int C_STOPREAD ; 
 int SKIP_ALL_BYTES ; 
 struct sqls_data* FUNC0 (struct connection*) ; 
 TYPE_5__* FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* conn_error ; 
 scalar_t__ conn_expect_query ; 
 int conn_reading_query ; 
 int conn_running ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*,int,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ sql_auth_ok ; 
 scalar_t__ sql_auth_sent ; 
 int FUNC12 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC13 (struct connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct connection*) ; 
 int FUNC15 (struct connection*,int) ; 
 int verbosity ; 

int FUNC16 (struct connection *c) {
  struct sqls_data *D = FUNC0(c);
  int len = FUNC8 (&c->Q);
  static unsigned int psize;
  if (verbosity > 1) {
    FUNC4 (stderr, "sqls_parse_execute(%d), bytes=%d\n", c->fd, len);
  }

  while (len > 0 && !(c->flags & (C_FAILED | C_STOPREAD))) {
    c->status = conn_reading_query;
    if (D->packet_state == 0) {
      if (len < 4) {
        return 4 - len;
      }
      FUNC3 (FUNC6 (&c->Q, &psize, 4) == 4);
      len -= 4;
      D->packet_state = 1;
      D->packet_len = psize & 0xffffff;
      D->output_packet_seq = D->packet_seq = (psize >> 24);
      if (D->block_size > 1) {
        D->packet_padding = D->block_size - (D->packet_len + 4) % D->block_size;
        if (D->packet_padding == D->block_size) {
          D->packet_padding = 0;
        }
      }
    }
    FUNC3 (D->packet_state == 1);
    if (len < D->packet_len + D->packet_padding) {
      return D->packet_len + D->packet_padding - len;
    }
    /* complete packet ready */
    if (verbosity > 1) {
      FUNC4 (stderr, "client packet ready: len=%d, padding=%d, seq_num=%d\n", D->packet_len, D->packet_padding, D->packet_seq);
    }
    if (D->auth_state == sql_auth_sent) {
      int res;
      if (D->packet_len == 16 && D->packet_seq == 0xcc && (D->crypto_flags & 14) == 6) {
        static char nonce_buff[20];
        FUNC3 (FUNC9 (&c->In, nonce_buff, D->packet_len + 4) == 20);
        res = FUNC1(c)->sql_start_crypto (c, nonce_buff + 4, 16);
        if (res != 1) {
          res = -1;
        } else {
          D->crypto_flags = (D->crypto_flags & -16) | 10;
          FUNC3 (c->type->crypto_decrypt_input && c->crypto && c->In.pptr);
          c->type->crypto_decrypt_input (c);
          FUNC7 (&c->Q, &c->In);
          len = FUNC8 (&c->Q);
          D->packet_state = 0;
          c->status = conn_expect_query;
          continue;
        }
      } else {
        if (D->crypto_flags & 4) {
          D->crypto_flags &= ~6;
          if (!(D->crypto_flags & 1)) {
            c->status = conn_error;
            c->error = -1;
            return 0;
          }
        }
        res = FUNC12(c);
      }
      if (res < 0) {
        c->status = conn_error;
        c->error = -1;
        return 0;
      }
      if (res) {
        /* send ok packet */
        FUNC11 (c, 0, 0, 2, 0, "Success", 7, 2);
        if (verbosity > 1) {
          FUNC4 (stderr, "authorized ok\n");
        }
        D->auth_state = sql_auth_ok;
        D->auth_user = res;
      } else {
        if (verbosity > 1) {
          FUNC4 (stderr, "authorization error\n");
        }
        FUNC10 (c, 1045, 28000, "Failed", 6, 2);
        /* send error packet */
      }
      FUNC2 (&c->In, D->packet_len + D->packet_padding + 4);
    } else {
      int op = (D->packet_len > 0 ? *(char *) FUNC5 (&c->Q) : -1);

      FUNC3 (D->auth_state == sql_auth_ok);

      if (verbosity > 1) {
        FUNC4 (stderr, "execute, op=%d\n", op);
      }

      int keep_total_bytes = c->In.total_bytes;

      /* execute */
      c->status = conn_running;
      int res = FUNC1(c)->execute (c, op);

      //dump_connection_buffers (c);

      if (res == SKIP_ALL_BYTES) {
//      assert (keep_total_bytes == c->In.total_bytes);  // this assert FAILS!
        if (keep_total_bytes != c->In.total_bytes) {
          FUNC4 (stderr, "error: in SKIP_ALL_BYTES for connection %d: keep_total=%d != total_bytes=%d, packet_len=%d, packet_padding=%d, packet_state=%d, packet_seq=%d, op=%d, status=%d\n", 
          		    c->fd, keep_total_bytes, c->In.total_bytes, D->packet_len, D->packet_padding, D->packet_state, D->packet_seq, op, c->status);
        }
        FUNC2 (&c->In, D->packet_len + D->packet_padding + 4);
      } else if (keep_total_bytes != c->In.total_bytes) {
        FUNC3 (keep_total_bytes == c->In.total_bytes + D->packet_len + 4);
        FUNC2 (&c->In, D->packet_padding);
      }
      if (c->status == conn_running) {
        c->status = conn_expect_query;
      }
    }
    D->packet_state = 0;
    if (c->status != conn_expect_query) {
      break;
    }
    FUNC7 (&c->Q, &c->In);
    len = FUNC8 (&c->Q);
  }

  return 0;
}