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
struct TYPE_5__ {int /*<<< orphan*/  handle; TYPE_1__ u; } ;
typedef  TYPE_2__ uv_pipe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(uv_pipe_t* pipe) {
  FUNC1(pipe->u.fd == -1 || pipe->u.fd > 2);
  if (pipe->u.fd == -1)
    FUNC0(pipe->handle);
  else
    FUNC2(pipe->u.fd);

  pipe->u.fd = -1;
  pipe->handle = INVALID_HANDLE_VALUE;
}