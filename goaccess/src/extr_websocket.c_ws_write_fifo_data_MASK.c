#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ WSPipeOut ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EPIPE ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,int) ; 

__attribute__((used)) static int
FUNC4 (WSPipeOut * pipeout, char *buffer, int len)
{
  int bytes = 0;

  bytes = FUNC1 (pipeout->fd, buffer, len);

  /* At this point, the reader probably closed the pipe, so a cheap *hack* for
   * this is to close the pipe on our end and attempt to reopen it. If unable to
   * do so, then let it be -1 and try on the next attempt to write. */
  if (bytes == -1 && errno == EPIPE) {
    FUNC0 (pipeout->fd);
    FUNC2 (pipeout);
    return bytes;
  }
  if (bytes < len || (bytes == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)))
    FUNC3 (pipeout, buffer, len, bytes);

  return bytes;
}