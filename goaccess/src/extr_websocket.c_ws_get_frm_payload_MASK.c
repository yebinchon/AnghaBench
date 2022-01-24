#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WSServer ;
struct TYPE_13__ {int buflen; scalar_t__ payloadsz; scalar_t__ mask_offset; int /*<<< orphan*/ * payload; } ;
typedef  TYPE_1__ WSMessage ;
struct TYPE_14__ {int payloadlen; } ;
typedef  TYPE_2__ WSFrame ;
struct TYPE_15__ {TYPE_1__* message; TYPE_2__* frame; } ;
typedef  TYPE_3__ WSClient ;

/* Variables and functions */
 int WS_CLOSE ; 
 int WS_ERR ; 
 int WS_READING ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,TYPE_1__*,scalar_t__,int) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int,int) ; 

__attribute__((used)) static int
FUNC7 (WSClient * client, WSServer * server)
{
  WSFrame **frm = NULL;
  WSMessage **msg = NULL;
  int bytes = 0, readh = 0, need = 0;

  if (client->message == NULL)
    client->message = FUNC0 ();

  frm = &client->frame;
  msg = &client->message;

  /* message within the same frame */
  if ((*msg)->payload == NULL && (*frm)->payloadlen)
    (*msg)->payload = FUNC6 ((*frm)->payloadlen, sizeof (char));
  /* handle a new frame */
  else if ((*msg)->buflen == 0 && (*frm)->payloadlen) {
    if (FUNC4 ((*frm), (*msg)) == 1)
      return FUNC5 (client, WS_ERR | WS_CLOSE, 0);
  }

  readh = (*msg)->buflen;       /* read from so far */
  need = (*frm)->payloadlen - readh;    /* need to read */
  if (need > 0) {
    if ((bytes = FUNC3 (client, (*msg), (*msg)->payloadsz, need)) < 0)
      return bytes;
    if (bytes != need)
      return FUNC5 (client, WS_READING, bytes);
  }

  (*msg)->mask_offset = (*msg)->payloadsz - (*msg)->buflen;

  FUNC2 (client, server);
  FUNC1 (client);

  return bytes;
}