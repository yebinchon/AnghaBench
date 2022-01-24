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
struct TYPE_9__ {int /*<<< orphan*/  colist; } ;
typedef  TYPE_1__ WSServer ;
struct TYPE_10__ {int /*<<< orphan*/  remote_ip; int /*<<< orphan*/  sslstatus; } ;
typedef  TYPE_2__ WSClient ;
struct TYPE_11__ {scalar_t__ use_ssl; } ;

/* Variables and functions */
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  WS_TLS_ACCEPTING ; 
 int /*<<< orphan*/  WS_TOO_BUSY_STR ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ *) ; 
 TYPE_3__ wsconfig ; 

__attribute__((used)) static void
FUNC5 (int listener, WSServer * server)
{
  WSClient *client = NULL;
  int newfd;

  newfd = FUNC1 (listener, &server->colist);
  if (newfd == -1)
    return;

  client = FUNC4 (newfd, &server->colist);
  if (newfd > FD_SETSIZE - 1) {
    FUNC0 (("Too busy: %d %s.\n", newfd, client->remote_ip));

    FUNC3 (client, WS_TOO_BUSY_STR);
    FUNC2 (newfd, client, server);
    return;
  }
#ifdef HAVE_LIBSSL
  /* set flag to do TLS handshake */
  if (wsconfig.use_ssl)
    client->sslstatus |= WS_TLS_ACCEPTING;
#endif

  FUNC0 (("Accepted: %d %s\n", newfd, client->remote_ip));
}