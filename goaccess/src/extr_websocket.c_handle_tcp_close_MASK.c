#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  colist; scalar_t__ closing; int /*<<< orphan*/  pipeout; int /*<<< orphan*/  (* onclose ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
typedef  TYPE_1__ WSServer ;
struct TYPE_15__ {int status; int /*<<< orphan*/ * ssl; int /*<<< orphan*/  end_proc; } ;
typedef  TYPE_2__ WSClient ;
struct TYPE_16__ {scalar_t__ accesslog; int /*<<< orphan*/  echomode; scalar_t__ strict; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int WS_ERR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_3__ wsconfig ; 

__attribute__((used)) static void
FUNC13 (int conn, WSClient * client, WSServer * server)
{
#ifdef HAVE_LIBSSL
  if (client->ssl)
    shutdown_ssl (client);
#endif

  FUNC5 (conn, SHUT_RDWR);
  /* upon close, call onclose() callback */
  if (server->onclose && wsconfig.strict && !wsconfig.echomode)
    (*server->onclose) (server->pipeout, client);

  /* do access logging */
  FUNC3 (&client->end_proc, NULL);
  if (wsconfig.accesslog)
    FUNC2 (client, 200);

  /* errored out while parsing a frame or a message */
  if (client->status & WS_ERR) {
    FUNC8 (client);
    FUNC10 (client);
    FUNC11 (client);
  }

  server->closing = 0;
  FUNC9 (conn);

#ifdef HAVE_LIBSSL
  if (client->ssl)
    SSL_free (client->ssl);
  client->ssl = NULL;
#endif

  /* remove client from our list */
  FUNC12 (client, server);
  FUNC0 (("Active: %d\n", FUNC4 (server->colist)));
}