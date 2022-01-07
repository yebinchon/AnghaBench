
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fchdir (int) ;
 int fchdir_lock ;
 int lock (int *) ;

__attribute__((used)) static void lock_fchdir(int dirfd) {
    lock(&fchdir_lock);
    fchdir(dirfd);
}
