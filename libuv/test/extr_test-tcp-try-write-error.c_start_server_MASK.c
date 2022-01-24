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
typedef  int /*<<< orphan*/  uv_stream_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  connection_cb ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void) {
  struct sockaddr_in addr;

  FUNC0(0 == FUNC2("0.0.0.0", TEST_PORT, &addr));

  FUNC0(0 == FUNC5(FUNC1(), &server));
  FUNC0(0 == FUNC4(&server, (struct sockaddr*) &addr, 0));
  FUNC0(0 == FUNC3((uv_stream_t*) &server, 128, connection_cb));
}