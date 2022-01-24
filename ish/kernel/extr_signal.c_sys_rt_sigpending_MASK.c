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
typedef  int sigset_t_ ;
typedef  int /*<<< orphan*/  int_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {int pending; int blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _EFAULT ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

int_t FUNC2(addr_t set_addr) {
    FUNC0("rt_sigpending(%#x)");
    // as defined by the standard
    sigset_t_ pending = current->pending & current->blocked;
    if (FUNC1(set_addr, pending))
        return _EFAULT;
    return 0;
}