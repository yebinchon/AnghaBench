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
typedef  int uint64_t ;
struct statbuf {int inode; int /*<<< orphan*/  mode; } ;
struct proc_entry {int pid; scalar_t__ fd; TYPE_1__* meta; } ;
struct TYPE_2__ {int inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct statbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_entry*) ; 

int FUNC2(struct proc_entry *entry, struct statbuf *stat) {
    FUNC0(stat, 0, sizeof(*stat));
    stat->mode = FUNC1(entry);
    stat->inode = entry->meta->inode | entry->pid << 16 | (uint64_t) entry->fd << 48;
    return 0;
}