#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ colist; int /*<<< orphan*/ * pipeout; int /*<<< orphan*/ * pipein; } ;
typedef  TYPE_1__ WSServer ;
typedef  int /*<<< orphan*/  WSPipeOut ;
typedef  int /*<<< orphan*/  WSPipeIn ;
struct TYPE_7__ {scalar_t__ accesslog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ws_remove_dangling_clients ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_2__ wsconfig ; 

void
FUNC8 (WSServer * server)
{
  WSPipeIn **pipein = &server->pipein;
  WSPipeOut **pipeout = &server->pipeout;

  FUNC5 (*pipein);
  FUNC6 (*pipeout);

  /* close access log (if any) */
  if (wsconfig.accesslog)
    FUNC0 ();

  /* remove dangling clients */
  if (FUNC2 (server->colist) > 0)
    FUNC3 (server->colist, ws_remove_dangling_clients, NULL);

  if (server->colist)
    FUNC4 (server->colist);

#ifdef HAVE_LIBSSL
  ws_ssl_cleanup (server);
#endif

  FUNC1 (server);
}