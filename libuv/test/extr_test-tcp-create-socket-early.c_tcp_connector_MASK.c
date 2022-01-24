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
typedef  int /*<<< orphan*/  uv_tcp_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_connect_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  on_connect ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uv_loop_t* loop, uv_tcp_t* client, uv_connect_t* req) {
  struct sockaddr_in server_addr;
  int r;

  FUNC0(0 == FUNC1("127.0.0.1", TEST_PORT, &server_addr));

  r = FUNC3(loop, client);
  FUNC0(r == 0);

  r = FUNC2(req,
                     client,
                     (const struct sockaddr*) &server_addr,
                     on_connect);
  FUNC0(r == 0);
}