#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sqlc_data {int packet_len; int response_state; int extra_flags; } ;
struct connection {int unreliability; void* last_query_sent_time; void* last_query_time; void* status; void* ready; struct conn_query* first_query; int /*<<< orphan*/  In; int /*<<< orphan*/  fd; void* last_response_time; } ;
struct conn_query {int /*<<< orphan*/  req_generation; TYPE_1__* requester; } ;
typedef  int /*<<< orphan*/  nb_iterator_t ;
struct TYPE_6__ {int /*<<< orphan*/  readed; } ;
typedef  TYPE_2__ data_reader_t ;
struct TYPE_5__ {int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 int SKIP_ALL_BYTES ; 
 struct sqlc_data* FUNC0 (struct connection*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* conn_error ; 
 void* conn_ready ; 
 void* cr_failed ; 
 TYPE_2__* FUNC3 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* precise_now ; 
#define  resp_done 131 
#define  resp_first 130 
#define  resp_reading_fields 129 
#define  resp_reading_rows 128 
 int FUNC8 (struct conn_query*) ; 
 int FUNC9 (struct conn_query*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*) ; 
 scalar_t__ FUNC11 (struct connection*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 

int FUNC13 (struct connection *c, int op) {
  struct sqlc_data *D = FUNC0(c);
  static char buffer[8];
  int b_len, field_cnt = -1;
  nb_iterator_t it;

  FUNC7 (&it, &c->In);
  b_len = FUNC6 (&it, buffer, 8);

  if (b_len >= 5) {
    field_cnt = buffer[4] & 0xff;
  }

  FUNC12 (1, "proxy_db_client: op=%d, packet_len=%d, response_state=%d, field_num=%d\n", op, D->packet_len, D->response_state, field_cnt);

  if (c->first_query == (struct conn_query *)c) {
    FUNC12 (-1, "response received for empty query list? op=%d\n", op);
    return SKIP_ALL_BYTES;
  }

  c->last_response_time = precise_now;

  if (FUNC11 (c)) {
    return 0;
  }

  int query_len = D->packet_len + 4;
  data_reader_t *reader = FUNC3 (c, query_len);

  int x;
  switch (D->response_state) {
  case resp_first:
    //forward_response (c, D->packet_len, SQLC_DATA(c)->extra_flags & 1);
    x = FUNC9 (c->first_query, reader);

    if (!reader->readed) {
      FUNC2 (FUNC1 (&c->In, query_len) == query_len);
    }

    if (x) {
      FUNC5 (c, -6);
      c->ready = cr_failed;
      return 0;
    }

    if (field_cnt == 0 && (FUNC0(c)->extra_flags & 1)) {
      FUNC4 ("looks like unused code");
      FUNC0(c)->extra_flags |= 2;
      if (c->first_query->requester->generation != c->first_query->req_generation) {
        FUNC12 (1, "outbound connection %d: nowhere to forward replication stream, closing\n", c->fd);
        c->status = conn_error;
      }
    } else if (field_cnt == 0 || field_cnt == 0xff) {
      D->response_state = resp_done;
    } else if (field_cnt < 0 || field_cnt >= 0xfe) {
      c->status = conn_error; // protocol error
    } else {
      D->response_state = resp_reading_fields;
    }
    break;
  case resp_reading_fields:
    //forward_response (c, D->packet_len, 0);
    x = FUNC9 (c->first_query, reader);
    if (!reader->readed) {
      FUNC2 (FUNC1 (&c->In, query_len) == query_len);
    }

    if (x) {
      FUNC5 (c, -7);
      c->ready = cr_failed;
      return 0;
    }

    if (field_cnt == 0xfe) {
      D->response_state = resp_reading_rows;
    }
    break;
  case resp_reading_rows:
    //forward_response (c, D->packet_len, 0);
    x = FUNC9 (c->first_query, reader);
    if (!reader->readed) {
      FUNC2 (FUNC1 (&c->In, query_len) == query_len);
    }
    if (x) {
      FUNC5 (c, -8);
      c->ready = cr_failed;
      return 0;
    }
    if (field_cnt == 0xfe) {
      D->response_state = resp_done;
    }
    break;
  case resp_done:
    FUNC12 (-1, "unexpected packet from server!\n");
    FUNC2 (0);
  }

  if (D->response_state == resp_done) {
//    query_complete (c, 1);
    x = FUNC8 (c->first_query);
    if (x) {
      FUNC5 (c, -9);
      c->ready = cr_failed;
      return 0;
    }

    //active_queries--;
    c->unreliability >>= 1;
    c->status = conn_ready;
    c->last_query_time = precise_now - c->last_query_sent_time;
    //SQLC_DATA(c)->extra_flags &= -2;
    FUNC10 (c);
  }

  return 0;
}