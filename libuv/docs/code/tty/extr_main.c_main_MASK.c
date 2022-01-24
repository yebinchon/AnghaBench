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
struct TYPE_3__ {char* base; void* len; } ;
typedef  TYPE_1__ uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 scalar_t__ UV_TTY ; 
 int /*<<< orphan*/  UV_TTY_MODE_NORMAL ; 
 int /*<<< orphan*/  loop ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  tty ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

int FUNC8() {
    loop = FUNC1();

    FUNC4(loop, &tty, STDOUT_FILENO, 0);
    FUNC6(&tty, UV_TTY_MODE_NORMAL);
    
    if (FUNC2(1) == UV_TTY) {
        uv_write_t req;
        uv_buf_t buf;
        buf.base = "\033[41;37m";
        buf.len = FUNC0(buf.base);
        FUNC7(&req, (uv_stream_t*) &tty, &buf, 1, NULL);
    }

    uv_write_t req;
    uv_buf_t buf;
    buf.base = "Hello TTY\n";
    buf.len = FUNC0(buf.base);
    FUNC7(&req, (uv_stream_t*) &tty, &buf, 1, NULL);
    FUNC5();
    return FUNC3(loop, UV_RUN_DEFAULT);
}