#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fd_t ;
struct TYPE_4__ {TYPE_1__* files; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(fd_t f) {
    FUNC1(&current->files->lock);
    int err = FUNC0(current->files, f);
    FUNC2(&current->files->lock);
    return err;
}