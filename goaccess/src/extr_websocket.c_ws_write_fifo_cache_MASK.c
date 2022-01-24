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
struct TYPE_6__ {int qlen; int /*<<< orphan*/  queued; } ;
typedef  TYPE_1__ WSQueue ;
struct TYPE_7__ {int /*<<< orphan*/  fd; TYPE_1__* fifoqueue; } ;
typedef  TYPE_2__ WSPipeOut ;

/* Variables and functions */
 scalar_t__ EPIPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5 (WSPipeOut * pipeout)
{
  WSQueue *queue = pipeout->fifoqueue;
  int bytes = 0;

  bytes = FUNC3 (pipeout->fd, queue->queued, queue->qlen);

  /* At this point, the reader probably closed the pipe, so a cheap *hack* for
   * this is to close the pipe on our end and attempt to reopen it. If unable to
   * do so, then let it be -1 and try on the next attempt to write. */
  if (bytes == -1 && errno == EPIPE) {
    FUNC2 (pipeout->fd);
    FUNC4 (pipeout);
    return bytes;
  }

  if (FUNC0 (queue->queued, bytes, queue->qlen) == 0)
    FUNC1 (pipeout);
  else
    queue->qlen -= bytes;

  return bytes;
}