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
struct fdtable {unsigned int size; int /*<<< orphan*/  cloexec; struct fd** files; } ;
struct fd {int dummy; } ;
typedef  scalar_t__ fd_t ;
struct TYPE_2__ {struct fdtable* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE_ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct fd*) ; 
 int FUNC3 (struct fdtable*,scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static fd_t FUNC5(struct fd *fd, fd_t start) {
    FUNC0(start >= 0);
    struct fdtable *table = current->files;
    unsigned size = FUNC4(RLIMIT_NOFILE_);
    if (size > table->size)
        size = table->size;

    fd_t f;
    for (f = start; (unsigned) f < size; f++)
        if (table->files[f] == NULL)
            break;
    if ((unsigned) f >= size) {
        int err = FUNC3(table, f);
        if (err < 0)
            f = err;
    }

    if (f >= 0) {
        table->files[f] = fd;
        FUNC1(f, table->cloexec);
    } else {
        FUNC2(fd);
    }
    return f;
}