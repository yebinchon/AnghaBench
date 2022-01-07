
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sqlc_data {int packet_len; int response_state; int extra_flags; } ;
struct connection {int unreliability; void* last_query_sent_time; void* last_query_time; void* status; void* ready; struct conn_query* first_query; int In; int fd; void* last_response_time; } ;
struct conn_query {int req_generation; TYPE_1__* requester; } ;
typedef int nb_iterator_t ;
struct TYPE_6__ {int readed; } ;
typedef TYPE_2__ data_reader_t ;
struct TYPE_5__ {int generation; } ;


 int SKIP_ALL_BYTES ;
 struct sqlc_data* SQLC_DATA (struct connection*) ;
 int advance_skip_read_ptr (int *,int) ;
 int assert (int) ;
 void* conn_error ;
 void* conn_ready ;
 void* cr_failed ;
 TYPE_2__* create_data_reader (struct connection*,int) ;
 int dl_unreachable (char*) ;
 int fail_connection (struct connection*,int) ;
 int nbit_read_in (int *,char*,int) ;
 int nbit_set (int *,int *) ;
 void* precise_now ;




 int sql_query_done (struct conn_query*) ;
 int sql_query_packet (struct conn_query*,TYPE_2__*) ;
 int sqlp_becomes_ready (struct connection*) ;
 scalar_t__ stop_forwarding_response (struct connection*) ;
 int vkprintf (int,char*,...) ;

int proxy_client_execute (struct connection *c, int op) {
  struct sqlc_data *D = SQLC_DATA(c);
  static char buffer[8];
  int b_len, field_cnt = -1;
  nb_iterator_t it;

  nbit_set (&it, &c->In);
  b_len = nbit_read_in (&it, buffer, 8);

  if (b_len >= 5) {
    field_cnt = buffer[4] & 0xff;
  }

  vkprintf (1, "proxy_db_client: op=%d, packet_len=%d, response_state=%d, field_num=%d\n", op, D->packet_len, D->response_state, field_cnt);

  if (c->first_query == (struct conn_query *)c) {
    vkprintf (-1, "response received for empty query list? op=%d\n", op);
    return SKIP_ALL_BYTES;
  }

  c->last_response_time = precise_now;

  if (stop_forwarding_response (c)) {
    return 0;
  }

  int query_len = D->packet_len + 4;
  data_reader_t *reader = create_data_reader (c, query_len);

  int x;
  switch (D->response_state) {
  case 130:

    x = sql_query_packet (c->first_query, reader);

    if (!reader->readed) {
      assert (advance_skip_read_ptr (&c->In, query_len) == query_len);
    }

    if (x) {
      fail_connection (c, -6);
      c->ready = cr_failed;
      return 0;
    }

    if (field_cnt == 0 && (SQLC_DATA(c)->extra_flags & 1)) {
      dl_unreachable ("looks like unused code");
      SQLC_DATA(c)->extra_flags |= 2;
      if (c->first_query->requester->generation != c->first_query->req_generation) {
        vkprintf (1, "outbound connection %d: nowhere to forward replication stream, closing\n", c->fd);
        c->status = conn_error;
      }
    } else if (field_cnt == 0 || field_cnt == 0xff) {
      D->response_state = 131;
    } else if (field_cnt < 0 || field_cnt >= 0xfe) {
      c->status = conn_error;
    } else {
      D->response_state = 129;
    }
    break;
  case 129:

    x = sql_query_packet (c->first_query, reader);
    if (!reader->readed) {
      assert (advance_skip_read_ptr (&c->In, query_len) == query_len);
    }

    if (x) {
      fail_connection (c, -7);
      c->ready = cr_failed;
      return 0;
    }

    if (field_cnt == 0xfe) {
      D->response_state = 128;
    }
    break;
  case 128:

    x = sql_query_packet (c->first_query, reader);
    if (!reader->readed) {
      assert (advance_skip_read_ptr (&c->In, query_len) == query_len);
    }
    if (x) {
      fail_connection (c, -8);
      c->ready = cr_failed;
      return 0;
    }
    if (field_cnt == 0xfe) {
      D->response_state = 131;
    }
    break;
  case 131:
    vkprintf (-1, "unexpected packet from server!\n");
    assert (0);
  }

  if (D->response_state == 131) {

    x = sql_query_done (c->first_query);
    if (x) {
      fail_connection (c, -9);
      c->ready = cr_failed;
      return 0;
    }


    c->unreliability >>= 1;
    c->status = conn_ready;
    c->last_query_time = precise_now - c->last_query_sent_time;

    sqlp_becomes_ready (c);
  }

  return 0;
}
