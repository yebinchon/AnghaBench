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
struct tl_query_header {int op; int /*<<< orphan*/  qid; } ;
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int RPC_INVOKE_REQ ; 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tl_query_header*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tl_query_header*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,int /*<<< orphan*/ ) ; 
 struct tl_query_header* FUNC9 (int) ; 

int FUNC10 (struct connection *c, int op, int len) {
  if (op != RPC_INVOKE_REQ) {
    return SKIP_ALL_BYTES;
  }
  //WaitAio = WaitAio2 = WaitAio3 = 0;
  //WaitAioArrClear ();
  
  FUNC0 ();
  FUNC5 (c, len - 4);
  struct tl_query_header *h = FUNC9 (sizeof (*h));
  FUNC6 (h);
  FUNC8 (c, h->qid);
  FUNC3 (h->op == op || FUNC4 ());

  FUNC1 (h);
  FUNC3 (FUNC2 (&c->In, 4 + FUNC7 ()) == 4 + FUNC7 ());
  return 0;
}