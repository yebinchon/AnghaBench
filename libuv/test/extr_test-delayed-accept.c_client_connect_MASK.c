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
typedef  int /*<<< orphan*/  uv_connect_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  connect_cb ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void) {
  struct sockaddr_in addr;
  uv_tcp_t* client = (uv_tcp_t*)FUNC1(sizeof *client);
  uv_connect_t* connect_req = FUNC1(sizeof *connect_req);
  int r;

  FUNC0(0 == FUNC3("127.0.0.1", TEST_PORT, &addr));
  FUNC0(client != NULL);
  FUNC0(connect_req != NULL);

  r = FUNC5(FUNC2(), client);
  FUNC0(r == 0);

  r = FUNC4(connect_req,
                     client,
                     (const struct sockaddr*) &addr,
                     connect_cb);
  FUNC0(r == 0);
}