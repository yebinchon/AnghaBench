#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  s5_ctx ;
struct TYPE_10__ {scalar_t__ buf; } ;
struct TYPE_11__ {scalar_t__ rdstate; scalar_t__ wrstate; scalar_t__ result; TYPE_1__ t; } ;
typedef  TYPE_2__ conn ;
struct TYPE_12__ {int /*<<< orphan*/  sx; TYPE_2__ incoming; int /*<<< orphan*/  parser; } ;
typedef  TYPE_3__ client_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int S5_AUTH_NONE ; 
 unsigned int S5_AUTH_PASSWD ; 
 scalar_t__ c_done ; 
 scalar_t__ c_stop ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 int s5_auth_select ; 
 int s5_ok ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int s_handshake ; 
 int s_kill ; 
 int s_req_start ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(client_ctx *cx) {
  unsigned int methods;
  conn *incoming;
  s5_ctx *parser;
  uint8_t *data;
  size_t size;
  int err;

  parser = &cx->parser;
  incoming = &cx->incoming;
  FUNC0(incoming->rdstate == c_done);
  FUNC0(incoming->wrstate == c_stop);
  incoming->rdstate = c_stop;

  if (incoming->result < 0) {
    FUNC6("read error: %s", FUNC11(incoming->result));
    return FUNC5(cx);
  }

  data = (uint8_t *) incoming->t.buf;
  size = (size_t) incoming->result;
  err = FUNC8(parser, &data, &size);
  if (err == s5_ok) {
    FUNC3(incoming);
    return s_handshake;  /* Need more data. */
  }

  if (size != 0) {
    /* Could allow a round-trip saving shortcut here if the requested auth
     * method is S5_AUTH_NONE (provided unauthenticated traffic is allowed.)
     * Requires client support however.
     */
    FUNC6("junk in handshake");
    return FUNC5(cx);
  }

  if (err != s5_auth_select) {
    FUNC6("handshake error: %s", FUNC10(err));
    return FUNC5(cx);
  }

  methods = FUNC7(parser);
  if ((methods & S5_AUTH_NONE) && FUNC1(cx->sx, cx)) {
    FUNC9(parser, S5_AUTH_NONE);
    FUNC4(incoming, "\5\0", 2);  /* No auth required. */
    return s_req_start;
  }

  if ((methods & S5_AUTH_PASSWD) && FUNC2(cx->sx, cx)) {
    /* TODO(bnoordhuis) Implement username/password auth. */
  }

  FUNC4(incoming, "\5\377", 2);  /* No acceptable auth. */
  return s_kill;
}