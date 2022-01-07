
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_entry {int dummy; } ;
struct TYPE_2__ {int entry; } ;
struct fd {int offset; TYPE_1__ proc; } ;
struct dir_entry {scalar_t__ inode; int name; } ;


 int proc_dir_read (int *,int *,struct proc_entry*) ;
 int proc_entry_getname (struct proc_entry*,int ) ;

__attribute__((used)) static int proc_readdir(struct fd *fd, struct dir_entry *entry) {
    struct proc_entry proc_entry;
    bool any_left = proc_dir_read(&fd->proc.entry, &fd->offset, &proc_entry);
    if (!any_left)
        return 0;
    proc_entry_getname(&proc_entry, entry->name);
    entry->inode = 0;
    return 1;
}
