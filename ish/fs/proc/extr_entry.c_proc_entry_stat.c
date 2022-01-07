
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct statbuf {int inode; int mode; } ;
struct proc_entry {int pid; scalar_t__ fd; TYPE_1__* meta; } ;
struct TYPE_2__ {int inode; } ;


 int memset (struct statbuf*,int ,int) ;
 int proc_entry_mode (struct proc_entry*) ;

int proc_entry_stat(struct proc_entry *entry, struct statbuf *stat) {
    memset(stat, 0, sizeof(*stat));
    stat->mode = proc_entry_mode(entry);
    stat->inode = entry->meta->inode | entry->pid << 16 | (uint64_t) entry->fd << 48;
    return 0;
}
