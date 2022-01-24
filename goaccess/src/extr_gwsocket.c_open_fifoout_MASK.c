#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* fifo_out; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDWR ; 
 char* WS_PIPEOUT ; 
 TYPE_1__ conf ; 
 int FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int
FUNC2 (void)
{
  const char *fifo = conf.fifo_out ? conf.fifo_out : WS_PIPEOUT;
  int fdfifo;

  /* open fifo for reading before writing */
  FUNC1 (fifo);
  if ((fdfifo = FUNC0 (fifo, O_RDWR | O_NONBLOCK)) == -1)
    return -1;

  return fdfifo;
}