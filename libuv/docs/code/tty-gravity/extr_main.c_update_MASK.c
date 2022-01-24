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
typedef  int /*<<< orphan*/  uv_timer_t ;
typedef  int /*<<< orphan*/  uv_stream_t ;
struct TYPE_3__ {char* base; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ uv_buf_t ;

/* Variables and functions */
 int height ; 
 int /*<<< orphan*/  message ; 
 int pos ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tick ; 
 int /*<<< orphan*/  tty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ width ; 
 int /*<<< orphan*/  write_req ; 

void FUNC5(uv_timer_t *req) {
    char data[500];

    uv_buf_t buf;
    buf.base = data;
    buf.len = FUNC0(data, "\033[2J\033[H\033[%dB\033[%luC\033[42;37m%s",
                            pos,
                            (unsigned long) (width-FUNC1(message))/2,
                            message);
    FUNC4(&write_req, (uv_stream_t*) &tty, &buf, 1, NULL);

    pos++;
    if (pos > height) {
        FUNC3();
        FUNC2(&tick);
    }
}