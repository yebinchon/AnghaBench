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
struct udp_target {int /*<<< orphan*/  constructors; int /*<<< orphan*/  max_confirmed; int /*<<< orphan*/  send_num; } ;
struct udp_msg_constructor {int msg_num; int total_parts; int parts; struct raw_message* msgs; } ;
struct udp_msg {int dummy; } ;
struct raw_message {int magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_target*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct udp_target*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct udp_msg_constructor*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct udp_msg_constructor* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct raw_message*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct udp_target*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct raw_message*) ; 
 int /*<<< orphan*/  FUNC9 (struct raw_message*,struct raw_message*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct udp_msg_constructor*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct udp_msg_constructor*,int /*<<< orphan*/ ) ; 
 struct udp_msg_constructor** FUNC12 (int /*<<< orphan*/ ,void*) ; 
 struct udp_msg* FUNC13 (struct raw_message*,int,struct udp_target*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,int,int,...) ; 

struct udp_msg *FUNC15 (struct raw_message *raw, int packet_id, int part, int total_parts, struct udp_target *S) {
  FUNC2 (packet_id >= 0);
  FUNC0 (S, packet_id + part);
  if (FUNC7 (S, packet_id + part)) {
    FUNC14 (1, "msg_is_dup: duplicate message %d. S->send_num = %d, S->max_confirmed = %d\n", packet_id, S->send_num, S->max_confirmed);
    FUNC8 (raw);
    return 0;
  }
  FUNC1 (S, packet_id + part);
  struct udp_msg_constructor **_M = FUNC12 (S->constructors, (void *)&packet_id);
  struct udp_msg_constructor *M;
  if (_M) {
    M = *_M;
  } else {
    M = FUNC5 (sizeof (*M) + total_parts * sizeof (struct raw_message));
    M->msg_num = packet_id;
    M->total_parts = total_parts;
    M->parts = total_parts;
    FUNC6 (M->msgs, 0, total_parts * sizeof (struct raw_message));
    S->constructors = FUNC11 (S->constructors, M, FUNC4 ());
  }
//  rwm_clone (&M->msgs[part], raw);
  M->msgs[part] = *raw;
  M->parts --;
  FUNC14 (3, "packet_id = %d. %d parts left\n", packet_id, M->parts);
  if (M->parts) { return 0; }
  struct raw_message *r = &M->msgs[0];
  int i;
  for (i = 1; i < M->total_parts; i++) {
    FUNC2 (M->msgs[i].magic);
    FUNC9 (r, &M->msgs[i]);
  }

  struct udp_msg *msg = FUNC13 (r, packet_id, S);

  S->constructors = FUNC10 (S->constructors, M);
  FUNC3 (M);
  
  return msg;
}