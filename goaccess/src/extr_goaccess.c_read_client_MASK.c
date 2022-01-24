#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_3__ {int fd; int /*<<< orphan*/  mutex; int /*<<< orphan*/  self_pipe; } ;
typedef  TYPE_1__ GWSReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  fast_forward_client ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6 (void *ptr_data)
{
  GWSReader *reader = (GWSReader *) ptr_data;
  fd_set rfds, wfds;

  FUNC0 (&rfds);
  FUNC0 (&wfds);

  /* check we have a fifo for reading */
  if (reader->fd == -1)
    return;

  FUNC2 (&reader->mutex);
  FUNC5 (reader->self_pipe);
  FUNC3 (&reader->mutex);

  while (1) {
    /* select(2) will block */
    if (FUNC4 (reader, rfds, wfds, fast_forward_client))
      break;
  }
  FUNC1 (reader->fd);
}