#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; } ;
struct TYPE_4__ {int /*<<< orphan*/  out_packet_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* flush_packet ) (struct connection*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * CS ; 
 int CSN ; 
 TYPE_2__* FUNC0 (struct connection*) ; 
 TYPE_1__* FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int*,int) ; 
 int FUNC5 (int) ; 
 struct connection* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_failed ; 
 int /*<<< orphan*/  rpc_sent ; 
 int rpc_sent_size ; 
 int /*<<< orphan*/  FUNC7 (struct connection*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int) ; 

int FUNC9 (int addr, int *q) {
  //fprintf (stderr, "send_to_news_rpc to @%d, [len = %d]\n", addr, q[0]);

  addr = FUNC5 (addr) % CSN;
  struct connection *c = FUNC6 (CS[addr]);

  //fprintf (stderr, "connection = %p\n", c);

  if (c == NULL) {
    FUNC2 (rpc_failed);
    return 0;
  }
  FUNC2 (rpc_sent);

  int n = q[0];
  FUNC3 (n >= 4);
  q[0] *= sizeof (int);
  q[1] = FUNC0(c)->out_packet_num++;
  q[n - 1] = FUNC4 (q, q[0] - sizeof (int));

  FUNC3 (FUNC8 (&c->Out, q, q[0]) == q[0]);

  rpc_sent_size += q[0];

  //TODO delete it
  FUNC1(c)->flush_packet(c);
  return 0;
}