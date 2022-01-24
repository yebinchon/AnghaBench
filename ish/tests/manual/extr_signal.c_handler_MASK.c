#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int si_code; int /*<<< orphan*/  si_addr; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 

void FUNC1(int signal, siginfo_t *info, void *ucontext) {
    FUNC0("caught signal %d code %d at %p\n", signal, info->si_code, info->si_addr);
}