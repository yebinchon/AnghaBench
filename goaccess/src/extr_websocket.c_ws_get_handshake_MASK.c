#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  colist; int /*<<< orphan*/  pipeout; int /*<<< orphan*/  (* onopen ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
typedef  TYPE_1__ WSServer ;
struct TYPE_18__ {int status; int /*<<< orphan*/  end_proc; TYPE_4__* headers; } ;
typedef  TYPE_2__ WSClient ;
struct TYPE_20__ {char* buf; int buflen; scalar_t__ reading; } ;
struct TYPE_19__ {scalar_t__ accesslog; int /*<<< orphan*/  echomode; scalar_t__ strict; } ;

/* Variables and functions */
 scalar_t__ BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  WS_BAD_REQUEST_STR ; 
 int WS_CLOSE ; 
 int WS_OK ; 
 int WS_READING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_2__*,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int FUNC13 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC14 (TYPE_4__*) ; 
 TYPE_3__ wsconfig ; 

__attribute__((used)) static int
FUNC15 (WSClient * client, WSServer * server)
{
  int bytes = 0, readh = 0;
  char *buf = NULL;

  if (client->headers == NULL)
    client->headers = FUNC5 ();

  buf = client->headers->buf;
  readh = client->headers->buflen;
  /* Probably the connection was closed before finishing handshake */
  if ((bytes = FUNC7 (client, buf + readh, BUFSIZ - readh)) < 1) {
    if (client->status & WS_CLOSE)
      FUNC3 (client, WS_BAD_REQUEST_STR);
    return bytes;
  }
  client->headers->buflen += bytes;

  buf[client->headers->buflen] = '\0';  /* null-terminate */

  /* Must have a \r\n\r\n */
  if (FUNC9 (buf, "\r\n\r\n") == NULL) {
    if (FUNC8 (buf) < BUFSIZ)
      return FUNC13 (client, WS_READING, bytes);

    FUNC3 (client, WS_BAD_REQUEST_STR);
    return FUNC13 (client, WS_CLOSE, bytes);
  }

  /* Ensure we have valid HTTP headers for the handshake */
  if (FUNC6 (client->headers) != 0) {
    FUNC3 (client, WS_BAD_REQUEST_STR);
    return FUNC13 (client, WS_CLOSE, bytes);
  }

  /* Ensure we have the required headers */
  if (FUNC14 (client->headers) != 0) {
    FUNC3 (client, WS_BAD_REQUEST_STR);
    return FUNC13 (client, WS_CLOSE, bytes);
  }

  FUNC12 (client->headers);

  /* handshake response */
  FUNC11 (client, client->headers);

  /* upon success, call onopen() callback */
  if (server->onopen && wsconfig.strict && !wsconfig.echomode)
    server->onopen (server->pipeout, client);
  client->headers->reading = 0;

  /* do access logging */
  FUNC2 (&client->end_proc, NULL);
  if (wsconfig.accesslog)
    FUNC1 (client, 101);
  FUNC0 (("Active: %d\n", FUNC4 (server->colist)));

  return FUNC13 (client, WS_OK, bytes);
}