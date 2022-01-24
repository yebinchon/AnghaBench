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
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  peer_handle ; 
 int /*<<< orphan*/  read_cb ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 
 int /*<<< orphan*/  write_req ; 

__attribute__((used)) static void FUNC5(uv_stream_t* handle, int status) {
  uv_buf_t buf;

  buf = FUNC2("PING", 4);

  FUNC0(0 == status);
  FUNC0(0 == FUNC1(handle, (uv_stream_t*) &peer_handle));
  FUNC0(0 == FUNC3((uv_stream_t*) &peer_handle, alloc_cb, read_cb));
  FUNC0(0 == FUNC4(&write_req, (uv_stream_t*) &peer_handle,
                       &buf, 1, write_cb));
}