#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ uv_fs_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct TYPE_7__ {size_t result; } ;

/* Variables and functions */
 char* buffer ; 
 int /*<<< orphan*/  crunch_away ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  idler ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__ stdin_watcher ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,void (*) (TYPE_1__*)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(uv_fs_t *req) {
    if (stdin_watcher.result > 0) {
        buffer[stdin_watcher.result] = '\0';
        FUNC1("Typed %s\n", buffer);

        uv_buf_t buf = FUNC2(buffer, 1024);
        FUNC3(loop, &stdin_watcher, 0, &buf, 1, -1, on_type);
        FUNC4(&idler, crunch_away);
    }
    else if (stdin_watcher.result < 0) {
        FUNC0(stderr, "error opening file: %s\n", FUNC5(req->result));
    }
}