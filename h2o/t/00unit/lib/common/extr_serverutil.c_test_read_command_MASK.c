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
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_1__ h2o_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char**,TYPE_1__**,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    char *argv[] = {"t/00unit/assets/read_command.pl", "hello", NULL};
    h2o_buffer_t *resp;
    int ret, status;

    /* success */
    ret = FUNC5(argv[0], argv, &resp, &status);
    FUNC6(ret == 0);
    if (ret == 0) {
        FUNC6(FUNC2(status));
        FUNC6(FUNC1(status) == 0);
        FUNC6(FUNC4(resp->bytes, resp->size, FUNC0("hello")));
        FUNC3(&resp);
    }

    /* exit status */
    FUNC7("READ_COMMAND_EXIT_STATUS", "75", 1);
    ret = FUNC5(argv[0], argv, &resp, &status);
    FUNC6(ret == 0);
    if (ret == 0) {
        FUNC6(FUNC2(status));
        FUNC6(FUNC1(status) == 75);
        FUNC6(FUNC4(resp->bytes, resp->size, FUNC0("hello")));
        FUNC3(&resp);
    }
    FUNC8("READ_COMMAND_EXIT_STATUS");

    /* command not an executable */
    argv[0] = "t/00unit/assets";
    ret = FUNC5(argv[0], argv, &resp, &status);
    FUNC6(ret != 0 || (ret == 0 && FUNC2(status) && FUNC1(status) == 127));
}