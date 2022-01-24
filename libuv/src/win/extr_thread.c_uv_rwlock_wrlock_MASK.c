#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  write_semaphore_; } ;
struct TYPE_5__ {TYPE_1__ state_; } ;
typedef  TYPE_2__ uv_rwlock_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(uv_rwlock_t* rwlock) {
  DWORD r = FUNC1(rwlock->state_.write_semaphore_, INFINITE);
  if (r != WAIT_OBJECT_0)
    FUNC2(FUNC0(), "WaitForSingleObject");
}