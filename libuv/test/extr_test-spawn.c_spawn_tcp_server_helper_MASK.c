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
typedef  int uv_os_sock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

int FUNC6(void) {
  uv_tcp_t tcp;
  uv_os_sock_t handle;
  int r;

  r = FUNC4(FUNC2(), &tcp);
  FUNC0(r == 0);

#ifdef _WIN32
  handle = _get_osfhandle(3);
#else
  handle = 3;
#endif
  r = FUNC5(&tcp, handle);
  FUNC0(r == 0);

  /* Make sure that we can listen on a socket that was
   * passed down from the parent process
   */
  r = FUNC3((uv_stream_t*)&tcp, SOMAXCONN, NULL);
  FUNC0(r == 0);

  return 1;
}