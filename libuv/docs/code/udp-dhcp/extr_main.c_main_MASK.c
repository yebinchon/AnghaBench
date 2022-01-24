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
typedef  int /*<<< orphan*/  uv_udp_send_t ;
typedef  int /*<<< orphan*/  uv_buf_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  UV_UDP_REUSEADDR ; 
 int /*<<< orphan*/  alloc_buffer ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  on_read ; 
 int /*<<< orphan*/  on_send ; 
 int /*<<< orphan*/  recv_socket ; 
 int /*<<< orphan*/  send_socket ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct sockaddr_in*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

int FUNC9() {
    loop = FUNC1();

    FUNC5(loop, &recv_socket);
    struct sockaddr_in recv_addr;
    FUNC2("0.0.0.0", 68, &recv_addr);
    FUNC4(&recv_socket, (const struct sockaddr *)&recv_addr, UV_UDP_REUSEADDR);
    FUNC6(&recv_socket, alloc_buffer, on_read);

    FUNC5(loop, &send_socket);
    struct sockaddr_in broadcast_addr;
    FUNC2("0.0.0.0", 0, &broadcast_addr);
    FUNC4(&send_socket, (const struct sockaddr *)&broadcast_addr, 0);
    FUNC8(&send_socket, 1);

    uv_udp_send_t send_req;
    uv_buf_t discover_msg = FUNC0();

    struct sockaddr_in send_addr;
    FUNC2("255.255.255.255", 67, &send_addr);
    FUNC7(&send_req, &send_socket, &discover_msg, 1, (const struct sockaddr *)&send_addr, on_send);

    return FUNC3(loop, UV_RUN_DEFAULT);
}