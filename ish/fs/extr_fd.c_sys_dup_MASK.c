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
struct fd {int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  fd_t ;
typedef  int /*<<< orphan*/  dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _EBADF ; 
 struct fd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fd*,int /*<<< orphan*/ ) ; 

dword_t FUNC3(fd_t f) {
    FUNC0("dup(%d)", f);
    struct fd *fd = FUNC1(f);
    if (fd == NULL)
        return _EBADF;
    fd->refcount++;
    return FUNC2(fd, 0);
}