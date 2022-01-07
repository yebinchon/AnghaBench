
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statbuf {int dummy; } ;
struct TYPE_2__ {int num; } ;
struct fd {TYPE_1__ devpts; } ;


 int devpts_stat_num (int ,struct statbuf*) ;

__attribute__((used)) static int devpts_fstat(struct fd *fd, struct statbuf *stat) {
    devpts_stat_num(fd->devpts.num, stat);
    return 0;
}
