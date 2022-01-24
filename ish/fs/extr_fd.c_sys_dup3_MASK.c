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
struct fdtable {int /*<<< orphan*/  cloexec; struct fd** files; } ;
struct fd {int dummy; } ;
typedef  int int_t ;
typedef  size_t fd_t ;
typedef  int dword_t ;
struct TYPE_2__ {struct fdtable* files; } ;

/* Variables and functions */
 int O_CLOEXEC_ ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,int) ; 
 int _EBADF ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 struct fd* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct fd*) ; 
 int FUNC5 (struct fdtable*,size_t) ; 

dword_t FUNC6(fd_t f, fd_t new_f, int_t flags) {
    FUNC0("dup3(%d, %d, %d)", f, new_f, flags);
    struct fdtable *table = current->files;
    struct fd *fd = FUNC3(f);
    if (fd == NULL)
        return _EBADF;
    int err = FUNC5(table, new_f);
    if (err < 0)
        return err;
    FUNC4(fd);
    FUNC2(new_f);
    table->files[new_f] = fd;
    if (flags & O_CLOEXEC_)
        FUNC1(new_f, table->cloexec);
    return new_f;
}