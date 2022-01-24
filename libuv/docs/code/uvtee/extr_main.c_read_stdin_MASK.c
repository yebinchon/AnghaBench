#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_4__ {scalar_t__ base; } ;
typedef  TYPE_1__ uv_buf_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ UV_EOF ; 
 int /*<<< orphan*/  file_pipe ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  on_file_write ; 
 int /*<<< orphan*/  on_stdout_write ; 
 int /*<<< orphan*/  stdin_pipe ; 
 int /*<<< orphan*/  stdout_pipe ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__ const,int /*<<< orphan*/ ) ; 

void FUNC3(uv_stream_t *stream, ssize_t nread, const uv_buf_t *buf) {
    if (nread < 0){
        if (nread == UV_EOF){
            // end of file
            FUNC1((uv_handle_t *)&stdin_pipe, NULL);
            FUNC1((uv_handle_t *)&stdout_pipe, NULL);
            FUNC1((uv_handle_t *)&file_pipe, NULL);
        }
    } else if (nread > 0) {
        FUNC2((uv_stream_t *)&stdout_pipe, nread, *buf, on_stdout_write);
        FUNC2((uv_stream_t *)&file_pipe, nread, *buf, on_file_write);
    }

    // OK to free buffer as write_data copies it.
    if (buf->base)
        FUNC0(buf->base);
}