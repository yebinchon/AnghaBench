#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ async_handles; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 TYPE_1__* container ; 
 scalar_t__ done ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(void* arg) {
  unsigned i;

  while (done == 0) {
    i = FUNC1() % FUNC0(container->async_handles);
    FUNC2(container->async_handles + i);
  }
}