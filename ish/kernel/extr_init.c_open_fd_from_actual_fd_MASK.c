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
struct fd {int real_fd; int /*<<< orphan*/ * dir; } ;

/* Variables and functions */
 struct fd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  realfs_fdops ; 

__attribute__((used)) static struct fd *FUNC1(int fd_no) {
    struct fd *fd = FUNC0(&realfs_fdops);
    if (fd == NULL) {
        return NULL;
    }
    fd->real_fd = fd_no;
    fd->dir = NULL;
    return fd;
}