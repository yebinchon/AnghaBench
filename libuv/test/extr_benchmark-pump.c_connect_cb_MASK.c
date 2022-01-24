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
typedef  int /*<<< orphan*/  uv_req_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TARGET_CONNECTIONS ; 
 scalar_t__ TCP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * pipe_write_handles ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * tcp_write_handles ; 
 scalar_t__ type ; 
 char* FUNC7 (int) ; 
 int write_sockets ; 

__attribute__((used)) static void FUNC8(uv_connect_t* req, int status) {
  int i;

  if (status) {
    FUNC3(stderr, "%s", FUNC7(status));
    FUNC2(stderr);
  }
  FUNC0(status == 0);

  write_sockets++;
  FUNC5((uv_req_t*) req);

  FUNC4();

  if (write_sockets == TARGET_CONNECTIONS) {
    FUNC6();

    /* Yay! start writing */
    for (i = 0; i < write_sockets; i++) {
      if (type == TCP)
        FUNC1((uv_stream_t*) &tcp_write_handles[i]);
      else
        FUNC1((uv_stream_t*) &pipe_write_handles[i]);
    }
  }
}