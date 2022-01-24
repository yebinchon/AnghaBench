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
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  crunch_away ; 
 int /*<<< orphan*/  idler ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  on_type ; 
 int /*<<< orphan*/  stdin_watcher ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6() {
    loop = FUNC1();

    FUNC3(loop, &idler);

    uv_buf_t buf = FUNC0(buffer, 1024);
    FUNC2(loop, &stdin_watcher, 0, &buf, 1, -1, on_type);
    FUNC4(&idler, crunch_away);
    return FUNC5(loop, UV_RUN_DEFAULT);
}