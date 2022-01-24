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
struct fd {int /*<<< orphan*/  real_fd; } ;
typedef  int /*<<< orphan*/  dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFL ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct fd *fd, dword_t flags) {
    int ret = FUNC1(fd->real_fd, F_SETFL, FUNC2(flags));
    if (ret < 0)
        return FUNC0();
    return 0;
}