#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_6__ {int /*<<< orphan*/  thread; int /*<<< orphan*/ * server; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ GWSWriter ;
typedef  TYPE_1__ GWSReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_client ; 
 int /*<<< orphan*/  set_ws_opts ; 
 int /*<<< orphan*/  start_server ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

int
FUNC4 (GWSWriter * gwswriter, GWSReader * gwsreader)
{
  int id;
  pthread_t *thread;

  if (FUNC2 (&gwswriter->mutex, NULL))
    FUNC0 ("Failed init gwswriter mutex");
  if (FUNC2 (&gwsreader->mutex, NULL))
    FUNC0 ("Failed init gwsreader mutex");

  /* send WS data thread */
  thread = &gwswriter->thread;

  /* pre-init the websocket server, to ensure the FIFOs are created */
  if ((gwswriter->server = FUNC3 ("0.0.0.0", "7890", set_ws_opts)) == NULL)
    FUNC0 ("Failed init websocket");

  id = FUNC1 (&(*thread), NULL, (void *) &start_server, gwswriter);
  if (id)
    FUNC0 ("Return code from pthread_create(): %d", id);

  /* read WS data thread */
  thread = &gwsreader->thread;
  id = FUNC1 (&(*thread), NULL, (void *) &read_client, gwsreader);
  if (id)
    FUNC0 ("Return code from pthread_create(): %d", id);

  return 0;
}