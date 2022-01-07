
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc_entry {TYPE_1__* meta; } ;
struct TYPE_6__ {int capacity; scalar_t__ size; int * data; } ;
struct TYPE_5__ {TYPE_3__ data; struct proc_entry entry; } ;
struct fd {TYPE_2__ proc; } ;
typedef int mode_t_ ;
struct TYPE_4__ {int (* show ) (struct proc_entry*,TYPE_3__*) ;} ;


 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int _EISDIR ;
 int assert (int ) ;
 int * malloc (int) ;
 int proc_entry_mode (struct proc_entry*) ;
 int stub1 (struct proc_entry*,TYPE_3__*) ;

__attribute__((used)) static int proc_refresh_data(struct fd *fd) {
    mode_t_ mode = proc_entry_mode(&fd->proc.entry);
    if (S_ISDIR(mode))
        return _EISDIR;
    assert(S_ISREG(mode));

    if (fd->proc.data.data == ((void*)0)) {
        fd->proc.data.capacity = 4096;
        fd->proc.data.data = malloc(fd->proc.data.capacity);
    }
    fd->proc.data.size = 0;
    struct proc_entry entry = fd->proc.entry;
    int err = entry.meta->show(&entry, &fd->proc.data);
    if (err < 0)
        return err;
    return 0;
}
