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
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; } ;
struct TYPE_5__ {long long req_id; struct connection* conn; } ;
typedef  TYPE_1__ php_worker ;
struct TYPE_7__ {int /*<<< orphan*/  out_packet_num; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* flush_packet ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct connection*) ; 
 TYPE_3__* FUNC1 (struct connection*) ; 
 int RPC_REQ_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*,int) ; 

void FUNC8 (php_worker *worker, int code, const char *str) {
  struct connection *c = worker->conn;
  //fprintf (stderr, "RPC ERROR %s\n", str);
  static int q[10000];
  q[1] = FUNC0(c)->out_packet_num++;
  q[2] = RPC_REQ_ERROR;
  *(long long *)(q + 3) = worker->req_id;
  q[5] = code;
  //TODO: write str

  char *buf = (char *)(q + 6);
  int all_len = 0;
  int sn = (int)FUNC5 (str);

  if (sn > 5000) {
    sn = 5000;
  }

  if (sn < 254) {
    *buf++ = (char) (sn);
    all_len += 1;
  } else if (sn < (1 << 24)) {
    *buf++ = (char) (254);
    *buf++ = (char) (sn & 255);
    *buf++ = (char) ((sn >> 8) & 255);
    *buf++ = (char) ((sn >> 16) & 255);
    all_len += 4;
  } else {
    FUNC2 ("TODO: store too big string" && 0);
  }

  FUNC4 (buf, str, (size_t)sn);
  buf += sn;
  all_len += sn;
  while (all_len % 4 != 0) {
    *buf++ = 0;
    all_len++;
  }

  int qn = 7 + all_len / 4;
  q[0] = qn * 4;
  q[qn - 1] = (int)FUNC3 (q, q[0] - 4);

  FUNC2 (FUNC7 (&c->Out, q, q[0]) == q[0]);

  FUNC1(c)->flush_packet (c);
}