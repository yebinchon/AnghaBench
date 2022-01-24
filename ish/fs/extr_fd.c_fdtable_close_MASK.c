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
struct fdtable {int /*<<< orphan*/  cloexec; int /*<<< orphan*/ ** files; } ;
struct fd {int /*<<< orphan*/ * inode; } ;
typedef  size_t fd_t ;

/* Variables and functions */
 int _EBADF ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fd*) ; 
 struct fd* FUNC2 (struct fdtable*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct fd*,struct fdtable*) ; 

__attribute__((used)) static int FUNC4(struct fdtable *table, fd_t f) {
    struct fd *fd = FUNC2(table, f);
    if (fd == NULL)
        return _EBADF;
    if (fd->inode != NULL) // temporary hack for files like sockets that right now don't have inodes but will eventually
        FUNC3(fd, table);
    int err = FUNC1(fd);
    table->files[f] = NULL;
    FUNC0(f, table->cloexec);
    return err;
}