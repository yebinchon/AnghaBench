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
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 
 int /*<<< orphan*/ * write_reqs ; 

__attribute__((used)) static void FUNC4(uv_tcp_t* handle) {
  uv_buf_t buf;
  unsigned i;
  int r;

  buf = FUNC2("PING", 4);
  for (i = 0; i < FUNC0(write_reqs); i++) {
    r = FUNC3(&write_reqs[i], (uv_stream_t*) handle, &buf, 1, write_cb);
    FUNC1(r == 0);
  }
}