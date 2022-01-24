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

/* Variables and functions */
 int /*<<< orphan*/  SERVER_STARTER_PORT ; 
 size_t SIZE_MAX ; 
 size_t FUNC0 (int**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    int *fds;
    size_t num_fds;

    FUNC3(SERVER_STARTER_PORT);
    num_fds = FUNC0(&fds);
    FUNC1(num_fds == 0);

    FUNC2(SERVER_STARTER_PORT, "0.0.0.0:80=3", 1);
    num_fds = FUNC0(&fds);
    FUNC1(num_fds == 1);
    FUNC1(fds[0] == 3);

    FUNC2(SERVER_STARTER_PORT, "0.0.0.0:80=3;/tmp/foo.sock=4", 1);
    num_fds = FUNC0(&fds);
    FUNC1(num_fds == 2);
    FUNC1(fds[0] == 3);
    FUNC1(fds[1] == 4);

    FUNC2(SERVER_STARTER_PORT, "0.0.0.0:80=foo", 1);
    num_fds = FUNC0(&fds);
    FUNC1(num_fds == SIZE_MAX);

    /* without bind address */
    FUNC2(SERVER_STARTER_PORT, "50908=4", 1);
    num_fds = FUNC0(&fds);
    FUNC1(num_fds == 1);
    FUNC1(fds[0] == 4);
}