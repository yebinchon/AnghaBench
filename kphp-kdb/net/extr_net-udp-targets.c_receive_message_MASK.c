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
struct udp_target {int dummy; } ;
struct udp_socket {int dummy; } ;
struct TYPE_3__ {int total_bytes; } ;
struct udp_msg {TYPE_1__ raw; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* on_receive ) (struct udp_msg*) ;} ;

/* Variables and functions */
#define  TL_UDP_DISABLE_ENCRYPTION 134 
#define  TL_UDP_NOP 133 
#define  TL_UDP_OBSOLETE_GENERATION 132 
#define  TL_UDP_OBSOLETE_HASH 131 
#define  TL_UDP_OBSOLETE_PID 130 
#define  TL_UDP_RESEND_REQUEST 129 
#define  TL_UDP_RESEND_REQUEST_EXT 128 
 TYPE_2__* FUNC0 (struct udp_socket*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct udp_msg*) ; 

int FUNC10 (struct udp_socket *u, struct udp_target *S, struct udp_msg *msg) {
  if (msg->raw.total_bytes >= 4) {
    //rwm_dump_sizes (&msg->raw);
    int op;
    FUNC1 (FUNC2 (&msg->raw, &op, 4) == 4);
    switch (op) {
    case TL_UDP_RESEND_REQUEST:
      FUNC8 (msg);
      return 0;
    case TL_UDP_RESEND_REQUEST_EXT:
      FUNC9 (msg);
      return 0;
    case TL_UDP_NOP:
      return 0;
    case TL_UDP_DISABLE_ENCRYPTION:
      return 0;
    case TL_UDP_OBSOLETE_PID:
      FUNC7 (msg);
      return 0;
    case TL_UDP_OBSOLETE_HASH:
      FUNC6 (msg);
      return 0;
    case TL_UDP_OBSOLETE_GENERATION:
      FUNC5 (msg);
      return 0;
    default:
      FUNC0 (u)->on_receive (msg);
      return 0;
    }
  } else {
    FUNC0 (u)->on_receive (msg);
//    S->methods->on_receive (msg);
    return 0;
  }
}