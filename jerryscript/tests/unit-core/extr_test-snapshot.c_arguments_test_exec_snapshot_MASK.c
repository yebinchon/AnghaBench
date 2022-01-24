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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  jerry_value_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_INIT_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8 (uint32_t *snapshot_p, size_t snapshot_size, uint32_t exec_snapshot_flags)
{
  FUNC4 (JERRY_INIT_EMPTY);
  jerry_value_t res = FUNC2 (snapshot_p, snapshot_size, 0, exec_snapshot_flags);
  FUNC0 (!FUNC6 (res));
  FUNC0 (FUNC7 (res));
  double raw_value = FUNC3 (res);
  FUNC0 (raw_value == 15);
  FUNC5 (res);

  FUNC1 ();
}