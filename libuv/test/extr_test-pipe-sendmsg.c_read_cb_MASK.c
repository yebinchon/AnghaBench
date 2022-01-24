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
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  loop; } ;
typedef  TYPE_1__ uv_pipe_t ;
typedef  scalar_t__ uv_handle_type ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ UV_NAMED_PIPE ; 
 int /*<<< orphan*/  close_cb ; 
 TYPE_1__* incoming ; 
 unsigned int incoming_count ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(uv_stream_t* handle,
                    ssize_t nread,
                    const uv_buf_t* buf) {
  uv_pipe_t* p;
  uv_pipe_t* inc;
  uv_handle_type pending;
  unsigned int i;

  p = (uv_pipe_t*) handle;
  FUNC1(nread >= 0);

  while (FUNC5(p) != 0) {
    pending = FUNC6(p);
    FUNC1(pending == UV_NAMED_PIPE);

    FUNC1(incoming_count < FUNC0(incoming));
    inc = &incoming[incoming_count++];
    FUNC1(0 == FUNC4(p->loop, inc, 0));
    FUNC1(0 == FUNC2(handle, (uv_stream_t*) inc));
  }

  if (incoming_count != FUNC0(incoming))
    return;

  FUNC1(0 == FUNC7((uv_stream_t*) p));
  FUNC3((uv_handle_t*) p, close_cb);
  for (i = 0; i < FUNC0(incoming); i++)
    FUNC3((uv_handle_t*) &incoming[i], close_cb);
}