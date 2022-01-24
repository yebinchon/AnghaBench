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
struct fd {int /*<<< orphan*/ * dir; int /*<<< orphan*/  real_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct fd *fd) {
    if (fd->dir == NULL) {
        int dirfd = FUNC1(fd->real_fd);
        fd->dir = FUNC2(dirfd);
        // this should never get called on a non-directory
        FUNC0(fd->dir != NULL);
    }
}