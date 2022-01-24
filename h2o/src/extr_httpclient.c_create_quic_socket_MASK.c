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
struct sockaddr_in {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_loop_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  H2O_SOCKET_FLAG_DONT_READ ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static h2o_socket_t *FUNC6(h2o_loop_t *loop)
{
    int fd;
    struct sockaddr_in sin;

    if ((fd = FUNC5(PF_INET, SOCK_DGRAM, 0)) == -1) {
        FUNC4("failed to create UDP socket");
        FUNC1(EXIT_FAILURE);
    }
    FUNC3(&sin, 0, sizeof(sin));
    if (FUNC0(fd, (void *)&sin, sizeof(sin)) != 0) {
        FUNC4("failed to bind bind UDP socket");
        FUNC1(EXIT_FAILURE);
    }

    return FUNC2(loop, fd, H2O_SOCKET_FLAG_DONT_READ);
}