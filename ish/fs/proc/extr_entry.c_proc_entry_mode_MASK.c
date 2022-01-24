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
struct proc_entry {TYPE_1__* meta; } ;
typedef  int mode_t_ ;
struct TYPE_2__ {int mode; } ;

/* Variables and functions */
 int S_IFMT ; 
 int S_IFREG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

mode_t_ FUNC3(struct proc_entry *entry) {
    mode_t_ mode = entry->meta->mode;
    if ((mode & S_IFMT) == 0)
        mode |= S_IFREG;
    if ((mode & 0777) == 0) {
        if (FUNC2(mode))
            mode |= 0444;
        else if (FUNC0(mode))
            mode |= 0555;
        else if (FUNC1(mode))
            mode |= 0777;
    }
    return mode;
}