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
typedef  int /*<<< orphan*/  ev_io ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  got_data ; 
 int /*<<< orphan*/  i3_connection ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char const* sock_path ; 

int FUNC4(const char *socket_path) {
    sock_path = socket_path;
    int sockfd = FUNC2(socket_path);
    i3_connection = FUNC3(sizeof(ev_io));
    FUNC0(i3_connection, &got_data, sockfd, EV_READ);
    FUNC1(main_loop, i3_connection);
    return 1;
}