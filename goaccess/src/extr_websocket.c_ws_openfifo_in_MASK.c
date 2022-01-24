#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fd; } ;
typedef  TYPE_1__ WSPipeIn ;
struct TYPE_5__ {int /*<<< orphan*/  pipein; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ wsconfig ; 

__attribute__((used)) static int
FUNC4 (WSPipeIn * pipein)
{
  FUNC3 (wsconfig.pipein);
  /* we should be able to open it at as reader */
  if ((pipein->fd = FUNC1 (wsconfig.pipein, O_RDWR | O_NONBLOCK)) < 0)
    FUNC0 ("Unable to open fifo in: %s.", FUNC2 (errno));

  return pipein->fd;
}