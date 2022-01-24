#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_packet ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,long long) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int) ; 

void FUNC6 (struct connection *c, int op, long long id, int *q, int qn) {
  q[2] = op;
  if (id != -1) {
    *(long long *)(q + 3) = id;
  }

  FUNC2 (c, q, qn);

  FUNC4 (4, "send_rpc_query: [len = %d] [op = %08x] [rpc_id = <%lld>]\n", q[0], op, id);
  FUNC1 (FUNC5 (&c->Out, q, q[0]) == q[0]);

  FUNC0(c)->flush_packet (c);
}