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
typedef  int /*<<< orphan*/  uv_prepare_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ num_ticks ; 
 scalar_t__ prepare_called ; 
 int /*<<< orphan*/  prepare_handle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(uv_prepare_t* handle) {
  FUNC0(handle == &prepare_handle);
  prepare_called++;
  if (prepare_called == num_ticks)
    FUNC1(handle);
}