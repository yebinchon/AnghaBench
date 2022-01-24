#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int state; } ;
typedef  TYPE_1__ client_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEBUG_CHECKS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int) ; 
#define  s_almost_dead_0 141 
#define  s_almost_dead_1 140 
#define  s_almost_dead_2 139 
#define  s_almost_dead_3 138 
#define  s_almost_dead_4 137 
 int s_dead ; 
#define  s_handshake 136 
#define  s_handshake_auth 135 
#define  s_kill 134 
#define  s_proxy 133 
#define  s_proxy_start 132 
#define  s_req_connect 131 
#define  s_req_lookup 130 
#define  s_req_parse 129 
#define  s_req_start 128 

__attribute__((used)) static void FUNC14(client_ctx *cx) {
  int new_state;

  FUNC0(cx->state != s_dead);
  switch (cx->state) {
    case s_handshake:
      new_state = FUNC3(cx);
      break;
    case s_handshake_auth:
      new_state = FUNC4(cx);
      break;
    case s_req_start:
      new_state = FUNC11(cx);
      break;
    case s_req_parse:
      new_state = FUNC10(cx);
      break;
    case s_req_lookup:
      new_state = FUNC9(cx);
      break;
    case s_req_connect:
      new_state = FUNC8(cx);
      break;
    case s_proxy_start:
      new_state = FUNC7(cx);
      break;
    case s_proxy:
      new_state = FUNC6(cx);
      break;
    case s_kill:
      new_state = FUNC5(cx);
      break;
    case s_almost_dead_0:
    case s_almost_dead_1:
    case s_almost_dead_2:
    case s_almost_dead_3:
    case s_almost_dead_4:
      new_state = FUNC2(cx);
      break;
    default:
      FUNC1();
  }
  cx->state = new_state;

  if (cx->state == s_dead) {
    if (DEBUG_CHECKS) {
      FUNC13(cx, -1, sizeof(*cx));
    }
    FUNC12(cx);
  }
}