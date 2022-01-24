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
struct udp_target {int /*<<< orphan*/  max_confirmed; int /*<<< orphan*/  send_num; } ;
struct udp_msg {int dummy; } ;
struct raw_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_target*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target*,int) ; 
 scalar_t__ FUNC2 (struct udp_target*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct raw_message*) ; 
 struct udp_msg* FUNC4 (struct raw_message*,int,struct udp_target*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct udp_msg *FUNC6 (struct raw_message *raw, int packet_id, struct udp_target *S) {
  if (packet_id >= 0) {
    FUNC0 (S, packet_id);
    if (FUNC2 (S, packet_id)) {
      FUNC5 (1, "msg_is_dup: duplicate message %d. S->send_num = %d, S->max_confirmed = %d\n", packet_id, S->send_num, S->max_confirmed);
      FUNC3 (raw);
      return 0;
    }
    FUNC1 (S, packet_id);
  }
  struct udp_msg *msg = FUNC4 (raw, packet_id, S);
  return msg;
}