
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int real_fd; } ;


 int LOCK_EX ;
 int LOCK_EX_ ;
 int LOCK_NB ;
 int LOCK_NB_ ;
 int LOCK_SH ;
 int LOCK_SH_ ;
 int LOCK_UN ;
 int LOCK_UN_ ;
 int flock (int ,int) ;

int realfs_flock(struct fd *fd, int operation) {
    int real_op = 0;
    if (operation & LOCK_SH_) real_op |= LOCK_SH;
    if (operation & LOCK_EX_) real_op |= LOCK_EX;
    if (operation & LOCK_UN_) real_op |= LOCK_UN;
    if (operation & LOCK_NB_) real_op |= LOCK_NB;
    return flock(fd->real_fd, real_op);
}
