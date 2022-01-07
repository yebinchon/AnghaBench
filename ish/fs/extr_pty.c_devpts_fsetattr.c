
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct fd {TYPE_1__ devpts; } ;
struct attr {int dummy; } ;


 int devpts_setattr_num (int ,struct attr) ;

__attribute__((used)) static int devpts_fsetattr(struct fd *fd, struct attr attr) {
    devpts_setattr_num(fd->devpts.num, attr);
    return 0;
}
