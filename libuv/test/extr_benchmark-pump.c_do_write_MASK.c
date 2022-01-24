#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_write_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_3__ {char* base; int len; } ;
typedef  TYPE_1__ uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_buffer ; 
 int /*<<< orphan*/  write_cb ; 

__attribute__((used)) static void FUNC3(uv_stream_t* stream) {
  uv_write_t* req;
  uv_buf_t buf;
  int r;

  buf.base = (char*) &write_buffer;
  buf.len = sizeof write_buffer;

  req = (uv_write_t*) FUNC1();
  r = FUNC2(req, stream, &buf, 1, write_cb);
  FUNC0(r == 0);
}