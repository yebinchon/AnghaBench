#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
struct TYPE_4__ {int type; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;
typedef  int /*<<< orphan*/  uv_connection_cb ;

/* Variables and functions */
 int UV_EINVAL ; 
#define  UV_NAMED_PIPE 129 
#define  UV_TCP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC3(uv_stream_t* stream, int backlog, uv_connection_cb cb) {
  int err;

  switch (stream->type) {
  case UV_TCP:
    err = FUNC2((uv_tcp_t*)stream, backlog, cb);
    break;

  case UV_NAMED_PIPE:
    err = FUNC1((uv_pipe_t*)stream, backlog, cb);
    break;

  default:
    err = UV_EINVAL;
  }

  if (err == 0)
    FUNC0(stream);

  return err;
}