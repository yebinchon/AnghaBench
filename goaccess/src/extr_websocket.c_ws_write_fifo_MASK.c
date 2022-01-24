#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int fd; int /*<<< orphan*/  status; int /*<<< orphan*/ * fifoqueue; } ;
typedef  TYPE_1__ WSPipeOut ;

/* Variables and functions */
 int /*<<< orphan*/  WS_SENDING ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char*,int) ; 

int
FUNC4 (WSPipeOut * pipeout, char *buffer, int len)
{
  int bytes = 0;

  if (pipeout->fd == -1 && FUNC0 (pipeout) == -1)
    return bytes;

  /* attempt to send the whole buffer buffer */
  if (pipeout->fifoqueue == NULL)
    bytes = FUNC3 (pipeout, buffer, len);
  /* buffer not empty, just append new data */
  else if (pipeout->fifoqueue != NULL && buffer != NULL) {
    if (FUNC1 (pipeout, buffer, len) == 1)
      return bytes;
  }
  /* send from cache buffer */
  else {
    bytes = FUNC2 (pipeout);
  }

  if (pipeout->fifoqueue == NULL)
    pipeout->status &= ~WS_SENDING;

  return bytes;
}