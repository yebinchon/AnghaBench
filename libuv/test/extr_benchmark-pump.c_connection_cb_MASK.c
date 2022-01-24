#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCP ; 
 int /*<<< orphan*/  buf_alloc ; 
 int /*<<< orphan*/  loop ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  max_read_sockets ; 
 int /*<<< orphan*/  read_cb ; 
 int /*<<< orphan*/  read_sockets ; 
 int /*<<< orphan*/ * server ; 
 scalar_t__ type ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(uv_stream_t* s, int status) {
  uv_stream_t* stream;
  int r;

  FUNC0(server == s);
  FUNC0(status == 0);

  if (type == TCP) {
    stream = (uv_stream_t*)FUNC1(sizeof(uv_tcp_t));
    r = FUNC5(loop, (uv_tcp_t*)stream);
    FUNC0(r == 0);
  } else {
    stream = (uv_stream_t*)FUNC1(sizeof(uv_pipe_t));
    r = FUNC3(loop, (uv_pipe_t*)stream, 0);
    FUNC0(r == 0);
  }

  r = FUNC2(s, stream);
  FUNC0(r == 0);

  r = FUNC4(stream, buf_alloc, read_cb);
  FUNC0(r == 0);

  read_sockets++;
  max_read_sockets++;
}