#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct proc_entry {TYPE_1__* meta; } ;
struct TYPE_6__ {int capacity; scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {TYPE_3__ data; struct proc_entry entry; } ;
struct fd {TYPE_2__ proc; } ;
typedef  int /*<<< orphan*/  mode_t_ ;
struct TYPE_4__ {int (* show ) (struct proc_entry*,TYPE_3__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int _EISDIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc_entry*) ; 
 int FUNC5 (struct proc_entry*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(struct fd *fd) {
    mode_t_ mode = FUNC4(&fd->proc.entry);
    if (FUNC0(mode))
        return _EISDIR;
    FUNC2(FUNC1(mode));

    if (fd->proc.data.data == NULL) {
        fd->proc.data.capacity = 4096;
        fd->proc.data.data = FUNC3(fd->proc.data.capacity); // default size
    }
    fd->proc.data.size = 0;
    struct proc_entry entry = fd->proc.entry;
    int err = entry.meta->show(&entry, &fd->proc.data);
    if (err < 0)
        return err;
    return 0;
}