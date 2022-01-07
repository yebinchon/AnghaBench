
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct fd {int offset; TYPE_1__ devpts; } ;
struct dir_entry {int inode; int name; } ;


 int MAX_PTYS ;
 int assert (int) ;
 int devpts_pty_exists (int) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int devpts_readdir(struct fd *fd, struct dir_entry *entry) {
    assert(fd->devpts.num == -1);

    int pty_num = fd->offset;
    while (pty_num < MAX_PTYS && !devpts_pty_exists(pty_num))
        pty_num++;
    if (pty_num >= MAX_PTYS)
        return 0;
    fd->offset = pty_num + 1;
    sprintf(entry->name, "%d", pty_num);
    entry->inode = pty_num + 3;
    return 1;
}
