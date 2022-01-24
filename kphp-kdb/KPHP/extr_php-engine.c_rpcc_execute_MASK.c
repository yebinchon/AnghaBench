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
struct connection {int /*<<< orphan*/  In; int /*<<< orphan*/  last_response_time; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  qres_t ;
typedef  int /*<<< orphan*/  nb_iterator_t ;

/* Variables and functions */
#define  RPC_PONG 130 
#define  RPC_REQ_ERROR 129 
#define  RPC_REQ_RESULT 128 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long long) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  qr_ans ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int /*<<< orphan*/ ,int,int) ; 

int FUNC11 (struct connection *c, int op, int len) {
  FUNC10 (1, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);

  int head[5];
  qres_t *qres;

  nb_iterator_t Iter;

  char *data;
  int data_len;

  c->last_response_time = precise_now;

  switch (op) {
    case RPC_REQ_ERROR:
    case RPC_REQ_RESULT:
      FUNC0 (len % (int)sizeof (int) == 0);
      len /= (int)sizeof (int);
      FUNC0 (len >= 6);

      FUNC7 (&Iter, &c->In);
      FUNC0 (FUNC6 (&Iter, head, sizeof (int) * 5) == sizeof (int) * 5);

      long long id = *(long long *)(&head[3]);

      qres = FUNC2 (id, qr_ans);
      if (qres == NULL) {
        FUNC3 (id);
        break;
      }

      if (op == RPC_REQ_ERROR) {
        FUNC8 (qres);
        break;
      }

      data_len = len - 5 - 1;
      data = FUNC4 (sizeof (int) * (size_t)data_len);
      FUNC0 (FUNC6 (&Iter, data, data_len * (int)sizeof (int)) == data_len * (int)sizeof (int));

      FUNC5 (&Iter);

      if (FUNC9 (qres, data, data_len * (int)sizeof (int)) < 0) {
        FUNC1 (data);
      }

      break;
    case RPC_PONG:
      break;
  }

  return SKIP_ALL_BYTES;
}