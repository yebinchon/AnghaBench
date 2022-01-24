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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MAX_WRITE_HANDLES ; 
 int TARGET_CONNECTIONS ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  connect_addr ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int n) {
  FUNC0(n <= MAX_WRITE_HANDLES);
  TARGET_CONNECTIONS = n;
  type = TCP;

  loop = FUNC3();

  FUNC0(0 == FUNC4("127.0.0.1", TEST_PORT, &connect_addr));

  /* Start making connections */
  FUNC2();

  FUNC5(loop, UV_RUN_DEFAULT);

  FUNC1();
}