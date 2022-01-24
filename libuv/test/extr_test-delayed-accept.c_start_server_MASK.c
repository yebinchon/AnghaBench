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
typedef  int /*<<< orphan*/  uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  connection_cb ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void) {
  struct sockaddr_in addr;
  uv_tcp_t* server = (uv_tcp_t*)FUNC1(sizeof *server);
  int r;

  FUNC0(0 == FUNC3("0.0.0.0", TEST_PORT, &addr));
  FUNC0(server != NULL);

  r = FUNC6(FUNC2(), server);
  FUNC0(r == 0);
  r = FUNC5(server, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  r = FUNC4((uv_stream_t*)server, 128, connection_cb);
  FUNC0(r == 0);
}