#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_7__ {int /*<<< orphan*/ * self_pipe; } ;
typedef  TYPE_1__ WSServer ;
struct TYPE_9__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * self_pipe; } ;
struct TYPE_8__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  mutex; TYPE_1__* server; } ;
typedef  TYPE_2__ GWSWriter ;
typedef  TYPE_3__ GWSReader ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7 (GWSWriter * gwswriter, GWSReader * gwsreader)
{
  pthread_t writer, reader;
  WSServer *server = NULL;

  if (!gwsreader || !gwswriter)
    return;
  if (!(server = gwswriter->server))
    return;

  FUNC2 (&gwsreader->mutex);
  if ((FUNC5 (gwsreader->self_pipe[1], "x", 1)) == -1 && errno != EAGAIN)
    FUNC0 (("Unable to write to self pipe on pipeout.\n"));
  FUNC3 (&gwsreader->mutex);

  FUNC2 (&gwswriter->mutex);
  /* if it fails to write, force stop */
  if ((FUNC5 (server->self_pipe[1], "x", 1)) == -1 && errno != EAGAIN)
    FUNC6 (server);
  FUNC3 (&gwswriter->mutex);

  reader = gwsreader->thread;
  if (FUNC1 (reader, NULL) != 0)
    FUNC0 (("Unable to join thread: %d %s\n", reader, FUNC4 (errno)));

  writer = gwswriter->thread;
  if (FUNC1 (writer, NULL) != 0)
    FUNC0 (("Unable to join thread: %d %s\n", writer, FUNC4 (errno)));
}