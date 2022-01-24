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
struct TYPE_6__ {int qlen; char* queued; } ;
typedef  TYPE_1__ WSQueue ;
struct TYPE_7__ {int /*<<< orphan*/  fd; TYPE_1__* fifoqueue; } ;
typedef  TYPE_2__ WSPipeOut ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5 (WSPipeOut * pipeout, const char *buf, int len)
{
  WSQueue *queue = pipeout->fifoqueue;
  char *tmp = NULL;
  int newlen = 0;

  newlen = queue->qlen + len;
  tmp = FUNC3 (queue->queued, newlen);
  if (tmp == NULL && newlen > 0) {
    FUNC1 (pipeout->fd);
    FUNC0 (pipeout);
    FUNC4 (pipeout);
    return 1;
  }

  queue->queued = tmp;
  FUNC2 (queue->queued + queue->qlen, buf, len);
  queue->qlen += len;

  return 0;
}