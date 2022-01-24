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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
typedef  int /*<<< orphan*/  uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIPE ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_connection ; 
 int /*<<< orphan*/  pipeServer ; 
 int /*<<< orphan*/ * server ; 
 int /*<<< orphan*/  serverType ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(char* pipeName) {
  int r;

#ifndef _WIN32
  {
    uv_fs_t req;
    FUNC2(NULL, &req, pipeName, NULL);
    FUNC1(&req);
  }
#endif

  server = (uv_handle_t*)&pipeServer;
  serverType = PIPE;

  r = FUNC5(loop, &pipeServer, 0);
  if (r) {
    FUNC0(stderr, "uv_pipe_init: %s\n", FUNC6(r));
    return 1;
  }

  r = FUNC4(&pipeServer, pipeName);
  if (r) {
    FUNC0(stderr, "uv_pipe_bind: %s\n", FUNC6(r));
    return 1;
  }

  r = FUNC3((uv_stream_t*)&pipeServer, SOMAXCONN, on_connection);
  if (r) {
    FUNC0(stderr, "uv_pipe_listen: %s\n", FUNC6(r));
    return 1;
  }

  return 0;
}