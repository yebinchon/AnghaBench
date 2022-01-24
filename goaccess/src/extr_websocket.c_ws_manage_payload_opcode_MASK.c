#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WSServer ;
struct TYPE_9__ {int opcode; int /*<<< orphan*/  fragmented; } ;
typedef  TYPE_1__ WSMessage ;
struct TYPE_10__ {int opcode; } ;
typedef  TYPE_2__ WSFrame ;
struct TYPE_11__ {int status; TYPE_1__* message; TYPE_2__* frame; } ;
typedef  TYPE_3__ WSClient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int WS_CLOSE ; 
 int WS_ERR ; 
#define  WS_OPCODE_BIN 132 
#define  WS_OPCODE_CONTINUATION 131 
#define  WS_OPCODE_PING 130 
#define  WS_OPCODE_PONG 129 
#define  WS_OPCODE_TEXT 128 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (WSClient * client, WSServer * server)
{
  WSFrame **frm = &client->frame;
  WSMessage **msg = &client->message;

  switch ((*frm)->opcode) {
  case WS_OPCODE_CONTINUATION:
    FUNC0 (("CONTINUATION\n"));
    /* first frame can't be a continuation frame */
    if (!(*msg)->fragmented) {
      client->status = WS_ERR | WS_CLOSE;
      break;
    }
    FUNC4 (client, server);
    break;
  case WS_OPCODE_TEXT:
  case WS_OPCODE_BIN:
    FUNC0 (("TEXT\n"));
    client->message->opcode = (*frm)->opcode;
    FUNC4 (client, server);
    break;
  case WS_OPCODE_PONG:
    FUNC0 (("PONG\n"));
    FUNC3 (client);
    break;
  case WS_OPCODE_PING:
    FUNC0 (("PING\n"));
    FUNC2 (client);
    break;
  default:
    FUNC0 (("CLOSE\n"));
    FUNC1 (client);
  }
}