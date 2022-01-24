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
struct TYPE_2__ {int total_bytes; } ;
struct udp_msg {int /*<<< orphan*/  S; TYPE_1__ raw; } ;

/* Variables and functions */
 int TL_UDP_RESEND_REQUEST_EXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

int FUNC4 (struct udp_msg *msg) {
  FUNC3 (2, "work_resend_request: len = %d\n", msg->raw.total_bytes);
  if (msg->raw.total_bytes > 102 * 4) { return 0; }
  int len =  msg->raw.total_bytes;
  static int P[102];
  FUNC0 (FUNC2 (&msg->raw, P, len) == len);  
  if ((P[1] + 1) * 8 != len) { return 0; }
  FUNC0 (P[0] == TL_UDP_RESEND_REQUEST_EXT);
  int i;
  //vkprintf (0, "resend request: num = %d\n", P[1]);
  for (i = 0; i < P[1]; i++) {
    if (P[2 + 2 * i] <= P[2 + 2 * i + 1]) {
      FUNC1 (msg->S, P[2 + 2 * i], P[2 + 2 * i + 1], 1);
    }
  }
  return 0;
}