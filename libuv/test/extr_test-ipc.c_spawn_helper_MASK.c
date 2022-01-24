#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_10__ {int fd; int /*<<< orphan*/ * stream; } ;
struct TYPE_11__ {int flags; TYPE_1__ data; } ;
typedef  TYPE_2__ uv_stdio_container_t ;
typedef  int /*<<< orphan*/  uv_process_t ;
struct TYPE_12__ {char* file; char** args; int /*<<< orphan*/  stdio_count; TYPE_2__* stdio; int /*<<< orphan*/  exit_cb; } ;
typedef  TYPE_3__ uv_process_options_t ;
struct TYPE_13__ {int ipc; } ;
typedef  TYPE_4__ uv_pipe_t ;
typedef  int /*<<< orphan*/  options ;
typedef  int /*<<< orphan*/  exepath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int UV_CREATE_PIPE ; 
 void* UV_INHERIT_FD ; 
 int UV_READABLE_PIPE ; 
 int UV_WRITABLE_PIPE ; 
 int /*<<< orphan*/  exit_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 

void FUNC7(uv_pipe_t* channel,
                  uv_process_t* process,
                  const char* helper) {
  uv_process_options_t options;
  size_t exepath_size;
  char exepath[1024];
  char* args[3];
  int r;
  uv_stdio_container_t stdio[3];

  r = FUNC5(FUNC3(), channel, 1);
  FUNC1(r == 0);
  FUNC1(channel->ipc);

  exepath_size = sizeof(exepath);
  r = FUNC4(exepath, &exepath_size);
  FUNC1(r == 0);

  exepath[exepath_size] = '\0';
  args[0] = exepath;
  args[1] = (char*)helper;
  args[2] = NULL;

  FUNC2(&options, 0, sizeof(options));
  options.file = exepath;
  options.args = args;
  options.exit_cb = exit_cb;
  options.stdio = stdio;
  options.stdio_count = FUNC0(stdio);

  stdio[0].flags = UV_CREATE_PIPE | UV_READABLE_PIPE | UV_WRITABLE_PIPE;
  stdio[0].data.stream = (uv_stream_t*) channel;
  stdio[1].flags = UV_INHERIT_FD;
  stdio[1].data.fd = 1;
  stdio[2].flags = UV_INHERIT_FD;
  stdio[2].data.fd = 2;

  r = FUNC6(FUNC3(), process, &options);
  FUNC1(r == 0);
}