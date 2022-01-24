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
struct sqlc_data {int packet_len; int response_state; int extra_flags; } ;
struct connection {scalar_t__ generation; int fd; void* status; struct conn_query* first_query; int /*<<< orphan*/  last_response_time; int /*<<< orphan*/  In; } ;
struct conn_query {scalar_t__ req_generation; struct connection* requester; } ;
typedef  int /*<<< orphan*/  nb_iterator_t ;

/* Variables and functions */
 int SKIP_ALL_BYTES ; 
 struct sqlc_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* conn_error ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,int) ; 
#define  resp_done 131 
#define  resp_first 130 
#define  resp_reading_fields 129 
#define  resp_reading_rows 128 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (struct connection*) ; 
 int verbosity ; 

int FUNC9 (struct connection *c, int op) {
  struct sqlc_data *D = FUNC0(c);
  static char buffer[8];
  int b_len, field_cnt = -1;
  nb_iterator_t it;

  FUNC6 (&it, &c->In);
  b_len = FUNC5 (&it, buffer, 8);

  if (b_len >= 5) {
    field_cnt = buffer[4] & 0xff;
  }

  if (verbosity > 0) {
    FUNC4 (stderr, "proxy_db_client: op=%d, packet_len=%d, response_state=%d, field_num=%d\n", op, D->packet_len, D->response_state, field_cnt);
  }

  if (c->first_query == (struct conn_query *)c) {
    if (verbosity >= 0) {
      FUNC4 (stderr, "response received for empty query list? op=%d\n", op);
      if (verbosity > -2) {
        FUNC2 (c);
        if (c->first_query != (struct conn_query *) c && c->first_query->req_generation == c->first_query->requester->generation) {
          FUNC2 (c->first_query->requester);
        }
      }
    }
    return SKIP_ALL_BYTES;
  }

  c->last_response_time = precise_now;

  if (FUNC8 (c)) {
    return 0;
  }

  switch (D->response_state) {
  case resp_first:
    FUNC3 (c, D->packet_len, FUNC0(c)->extra_flags & 1);
    if (field_cnt == 0 && (FUNC0(c)->extra_flags & 1)) {
      FUNC0(c)->extra_flags |= 2;
      if (c->first_query->requester->generation != c->first_query->req_generation) {
        if (verbosity > 0) {
          FUNC4 (stderr, "outbound connection %d: nowhere to forward replication stream, closing\n", c->fd);
        }
        c->status = conn_error;
      }
    } else if (field_cnt == 0 || field_cnt == 0xff) {
      D->response_state = resp_done;
    } else if (field_cnt < 0 || field_cnt >= 0xfe) {
      c->status = conn_error;	// protocol error
    } else {
      D->response_state = resp_reading_fields;
    }
    break;
  case resp_reading_fields:
    FUNC3 (c, D->packet_len, 0);
    if (field_cnt == 0xfe) {
      D->response_state = resp_reading_rows;
    }
    break;
  case resp_reading_rows:
    FUNC3 (c, D->packet_len, 0);
    if (field_cnt == 0xfe) {
      D->response_state = resp_done;
    }
    break;
  case resp_done:
    FUNC4 (stderr, "unexpected packet from server!\n");
    FUNC1 (0);
  }

  if (D->response_state == resp_done) {
    FUNC7 (c, 1);
  }

  return 0;
}