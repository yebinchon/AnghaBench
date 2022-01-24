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
struct TYPE_2__ {int /*<<< orphan*/  total_bytes; } ;
struct udp_msg {int /*<<< orphan*/  S; TYPE_1__ raw; } ;
struct tl_query_header {scalar_t__ op; int /*<<< orphan*/  qid; } ;
struct raw_message {int dummy; } ;

/* Variables and functions */
 scalar_t__ RPC_INVOKE_REQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct tl_query_header*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct raw_message*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct raw_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct raw_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tl_query_header*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tl_query_header* FUNC8 (int) ; 

int FUNC9 (struct udp_msg *msg) {
  //WaitAio = WaitAio2 = WaitAio3 = 0;
  //WaitAioArrClear ();
  
  FUNC0 ();
  struct raw_message r;
  FUNC3 (&r, &msg->raw);
  FUNC5 (&r, msg->raw.total_bytes);
  FUNC4 (&r);
  struct tl_query_header *h = FUNC8 (sizeof (*h));
  FUNC6 (h);
  FUNC2 (msg->S);
  FUNC7 (msg->S, h->qid);

  if (h->op != RPC_INVOKE_REQ) {
    return 0;
  }

  FUNC1 (h);
  return 0;
}