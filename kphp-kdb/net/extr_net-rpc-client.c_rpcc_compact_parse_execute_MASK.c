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
struct rpcc_data {int packet_len; int flags; int packet_type; int /*<<< orphan*/  in_packet_num; int /*<<< orphan*/  packet_num; } ;
struct TYPE_4__ {int total_bytes; } ;
struct connection {scalar_t__ status; int error; TYPE_1__ In; int /*<<< orphan*/  Q; int /*<<< orphan*/  pending_queries; } ;
struct TYPE_5__ {int max_packet_len; int (* execute ) (struct connection*,int,int) ;} ;

/* Variables and functions */
 struct rpcc_data* FUNC0 (struct connection*) ; 
 TYPE_3__* FUNC1 (struct connection*) ; 
 int SKIP_ALL_BYTES ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ conn_error ; 
 void* conn_reading_answer ; 
 scalar_t__ conn_running ; 
 scalar_t__ conn_wait_answer ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct connection*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

int FUNC9 (struct connection *c) {
  struct rpcc_data *D = FUNC0(c);
  int len;

  while (1) {
    len = FUNC6 (&c->Q);
    if (len <= 0) {
      break;
    }
    if (!D->packet_len) {
      if (len < 4) {
        c->status = conn_reading_answer;
        return 4 - len;
      }
      FUNC3 (FUNC4 (&c->Q, &D->packet_len, 1) == 1);
      len--;
      if (D->packet_len & 0x80) {
	c->status = conn_error;
	c->error = -1;
	return 0;
      }
      if (D->packet_len == 0x7f) {
	FUNC3 (FUNC4 (&c->Q, &D->packet_len, 3) == 3);
	if (D->packet_len < 0x7f) {
	  FUNC8 (1, "error while parsing compact packet: got length %d in overlong encoding\n", D->packet_len);
	  c->status = conn_error;
	  c->error = -1;
	  return 0;
	}
	len -= 3;
      } else if (!D->packet_len) {
	FUNC8 (1, "error while parsing compact packet: got zero packet length\n");
	c->status = conn_error;
	c->error = -1;
	return 0;
      }
      D->flags |= 0x40000000;
      D->packet_len <<= 2;
      if (D->packet_len > FUNC1(c)->max_packet_len && FUNC1(c)->max_packet_len > 0) {
	FUNC8 (1, "error while parsing packet: bad packet length %d\n", D->packet_len);
	c->status = conn_error;
	c->error = -1;
	return 0;
      }
    }
    if (len < D->packet_len) {
      c->status = conn_reading_answer;
      return D->packet_len - len;
    }
    FUNC3 (FUNC4 (&c->Q, &D->packet_type, 4) == 4);

    if (D->packet_len <= 0x7e * 4) {
      FUNC3 (FUNC2 (&c->In, 1) == 1);
    } else {
      FUNC3 (FUNC2 (&c->In, 4) == 4);
    }
    D->packet_num = D->in_packet_num;
    
    int keep_total_bytes = c->In.total_bytes;
    int res;

    /* main case */
    c->status = conn_running;
    res = FUNC1(c)->execute (c, D->packet_type, D->packet_len);

    if (c->status == conn_error) {
      if (!c->error) {
        c->error = -2;
      }
      return 0;
    }

    if (res == SKIP_ALL_BYTES) {
      FUNC3 (keep_total_bytes == c->In.total_bytes);
      FUNC2 (&c->In, D->packet_len);
    } else {
      FUNC3 (keep_total_bytes == c->In.total_bytes + D->packet_len);
    }
    D->in_packet_num++;

    FUNC3 (!c->pending_queries && c->status == conn_running);
    c->status = conn_wait_answer;

    D->packet_len = 0;
    FUNC5 (&c->Q, &c->In);
  }
  return 0;
}