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
struct write_info {int /*<<< orphan*/  write_req; int /*<<< orphan*/ * buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BUFFERS_PER_WRITE ; 
 int /*<<< orphan*/  BUFFER_CONTENT ; 
 int /*<<< orphan*/  BUFFER_SIZE ; 
 struct write_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_cb ; 

__attribute__((used)) static void FUNC5(uv_stream_t* handle) {
  struct write_info* write_info;
  uv_buf_t bufs[BUFFERS_PER_WRITE];
  size_t i;
  int r;

  write_info = FUNC1(sizeof *write_info);
  FUNC0(write_info != NULL);

  for (i = 0; i < BUFFERS_PER_WRITE; i++) {
    FUNC2(&write_info->buffers[i], BUFFER_CONTENT, BUFFER_SIZE);
    bufs[i] = FUNC3(write_info->buffers[i], BUFFER_SIZE);
  }

  r = FUNC4(
      &write_info->write_req, handle, bufs, BUFFERS_PER_WRITE, write_cb);
  FUNC0(r == 0);
}