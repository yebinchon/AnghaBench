
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statbuf {int dummy; } ;
struct TYPE_2__ {int entry; } ;
struct fd {TYPE_1__ proc; } ;


 int proc_entry_stat (int *,struct statbuf*) ;

__attribute__((used)) static int proc_fstat(struct fd *fd, struct statbuf *stat) {
    return proc_entry_stat(&fd->proc.entry, stat);
}
