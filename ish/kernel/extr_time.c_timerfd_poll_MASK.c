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
struct TYPE_2__ {scalar_t__ expirations; } ;
struct fd {int /*<<< orphan*/  lock; TYPE_1__ timerfd; } ;

/* Variables and functions */
 int POLL_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct fd *fd) {
    int res = 0;
    FUNC0(&fd->lock);
    if (fd->timerfd.expirations != 0)
        res |= POLL_READ;
    FUNC1(&fd->lock);
    return res;
}