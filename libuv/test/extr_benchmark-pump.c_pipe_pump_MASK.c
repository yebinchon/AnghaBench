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
 int /*<<< orphan*/  PIPE ; 
 int TARGET_CONNECTIONS ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int n) {
  FUNC0(n <= MAX_WRITE_HANDLES);
  TARGET_CONNECTIONS = n;
  type = PIPE;

  loop = FUNC3();

  /* Start making connections */
  FUNC2();

  FUNC4(loop, UV_RUN_DEFAULT);

  FUNC1();
}