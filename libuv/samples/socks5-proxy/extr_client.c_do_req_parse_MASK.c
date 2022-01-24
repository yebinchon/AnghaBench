#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {scalar_t__ cmd; scalar_t__ atyp; scalar_t__ daddr; int /*<<< orphan*/  dport; } ;
typedef  TYPE_2__ s5_ctx ;
struct TYPE_16__ {int /*<<< orphan*/  sin6_addr; void* sin6_port; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  sin_addr; void* sin_port; int /*<<< orphan*/  sin_family; } ;
struct TYPE_12__ {TYPE_6__ addr6; TYPE_6__ addr4; scalar_t__ buf; } ;
struct TYPE_14__ {scalar_t__ rdstate; scalar_t__ wrstate; scalar_t__ result; TYPE_1__ t; } ;
typedef  TYPE_3__ conn ;
struct TYPE_15__ {TYPE_3__ outgoing; TYPE_3__ incoming; TYPE_2__ parser; } ;
typedef  TYPE_4__ client_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ c_done ; 
 scalar_t__ c_stop ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ s5_atyp_host ; 
 scalar_t__ s5_atyp_ipv4 ; 
 scalar_t__ s5_atyp_ipv6 ; 
 scalar_t__ s5_cmd_tcp_bind ; 
 scalar_t__ s5_cmd_tcp_connect ; 
 scalar_t__ s5_cmd_udp_assoc ; 
 int s5_exec_cmd ; 
 int s5_ok ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ **,size_t*) ; 
 unsigned int FUNC12 (int) ; 
 int s_req_lookup ; 
 int s_req_parse ; 
 unsigned int FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(client_ctx *cx) {
  conn *incoming;
  conn *outgoing;
  s5_ctx *parser;
  uint8_t *data;
  size_t size;
  int err;

  parser = &cx->parser;
  incoming = &cx->incoming;
  outgoing = &cx->outgoing;
  FUNC0(incoming->rdstate == c_done);
  FUNC0(incoming->wrstate == c_stop);
  FUNC0(outgoing->rdstate == c_stop);
  FUNC0(outgoing->wrstate == c_stop);
  incoming->rdstate = c_stop;

  if (incoming->result < 0) {
    FUNC9("read error: %s", FUNC13(incoming->result));
    return FUNC4(cx);
  }

  data = (uint8_t *) incoming->t.buf;
  size = (size_t) incoming->result;
  err = FUNC11(parser, &data, &size);
  if (err == s5_ok) {
    FUNC3(incoming);
    return s_req_parse;  /* Need more data. */
  }

  if (size != 0) {
    FUNC9("junk in request %u", (unsigned) size);
    return FUNC4(cx);
  }

  if (err != s5_exec_cmd) {
    FUNC9("request error: %s", FUNC12(err));
    return FUNC4(cx);
  }

  if (parser->cmd == s5_cmd_tcp_bind) {
    /* Not supported but relatively straightforward to implement. */
    FUNC10("BIND requests are not supported.");
    return FUNC4(cx);
  }

  if (parser->cmd == s5_cmd_udp_assoc) {
    /* Not supported.  Might be hard to implement because libuv has no
     * functionality for detecting the MTU size which the RFC mandates.
     */
    FUNC10("UDP ASSOC requests are not supported.");
    return FUNC4(cx);
  }
  FUNC0(parser->cmd == s5_cmd_tcp_connect);

  if (parser->atyp == s5_atyp_host) {
    FUNC2(outgoing, (const char *) parser->daddr);
    return s_req_lookup;
  }

  if (parser->atyp == s5_atyp_ipv4) {
    FUNC8(&outgoing->t.addr4, 0, sizeof(outgoing->t.addr4));
    outgoing->t.addr4.sin_family = AF_INET;
    outgoing->t.addr4.sin_port = FUNC6(parser->dport);
    FUNC7(&outgoing->t.addr4.sin_addr,
           parser->daddr,
           sizeof(outgoing->t.addr4.sin_addr));
  } else if (parser->atyp == s5_atyp_ipv6) {
    FUNC8(&outgoing->t.addr6, 0, sizeof(outgoing->t.addr6));
    outgoing->t.addr6.sin6_family = AF_INET6;
    outgoing->t.addr6.sin6_port = FUNC6(parser->dport);
    FUNC7(&outgoing->t.addr6.sin6_addr,
           parser->daddr,
           sizeof(outgoing->t.addr6.sin6_addr));
  } else {
    FUNC1();
  }

  return FUNC5(cx);
}