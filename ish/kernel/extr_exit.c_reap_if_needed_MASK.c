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
struct task {int dummy; } ;
typedef  int int_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int WUNTRACED_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct task*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task*) ; 

__attribute__((used)) static bool FUNC4(struct task *task, int_t options, addr_t status_addr, addr_t rusage_addr) {
    FUNC0(FUNC3(task));
    if (options & WUNTRACED_ && FUNC1(task, status_addr))
        return true;
    if (FUNC2(task, status_addr, rusage_addr))
        return true;
    return false;
}