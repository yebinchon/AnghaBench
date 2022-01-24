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
typedef  int /*<<< orphan*/  uv_tcp_t ;
struct TYPE_7__ {struct TYPE_7__* data; } ;
typedef  TYPE_1__ uv_stream_t ;
typedef  int /*<<< orphan*/  uv_pipe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PIPE 129 
#define  TCP 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  after_read ; 
 int /*<<< orphan*/  echo_alloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 TYPE_1__* FUNC3 (int) ; 
 int serverType ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(uv_stream_t* server, int status) {
  uv_stream_t* stream;
  int r;

  if (status != 0) {
    FUNC2(stderr, "Connect error %s\n", FUNC5(status));
  }
  FUNC0(status == 0);

  switch (serverType) {
  case TCP:
    stream = FUNC3(sizeof(uv_tcp_t));
    FUNC0(stream != NULL);
    r = FUNC8(loop, (uv_tcp_t*)stream);
    FUNC0(r == 0);
    break;

  case PIPE:
    stream = FUNC3(sizeof(uv_pipe_t));
    FUNC0(stream != NULL);
    r = FUNC6(loop, (uv_pipe_t*)stream, 0);
    FUNC0(r == 0);
    break;

  default:
    FUNC0(0 && "Bad serverType");
    FUNC1();
  }

  /* associate server with stream */
  stream->data = server;

  r = FUNC4(server, stream);
  FUNC0(r == 0);

  r = FUNC7(stream, echo_alloc, after_read);
  FUNC0(r == 0);
}