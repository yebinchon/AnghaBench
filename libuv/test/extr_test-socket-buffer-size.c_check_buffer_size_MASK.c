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
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC2(uv_handle_t* handle) {
  int value;

  value = 0;
  FUNC0(0 == FUNC1(handle, &value));
  FUNC0(value > 0);

  value = 10000;
  FUNC0(0 == FUNC1(handle, &value));

  value = 0;
  FUNC0(0 == FUNC1(handle, &value));
  /* linux sets double the value */
  FUNC0(value == 10000 || value == 20000);
}