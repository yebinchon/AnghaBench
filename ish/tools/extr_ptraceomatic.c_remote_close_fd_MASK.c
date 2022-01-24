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
struct user_regs_struct {long rip; int rax; int rbx; } ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct user_regs_struct*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct user_regs_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(int pid, int fd, long int80_ip) {
    // lettuce spray
    struct user_regs_struct saved_regs;
    FUNC1(pid, &saved_regs);
    struct user_regs_struct regs = saved_regs;
    regs.rip = int80_ip;
    regs.rax = 6;
    regs.rbx = fd;
    FUNC3(pid, &regs);
    FUNC4(pid);
    FUNC1(pid, &regs);
    if ((long) regs.rax < 0) {
        errno = -regs.rax;
        FUNC2("remote close fd");
        FUNC0(1);
    }
    FUNC3(pid, &regs);
}