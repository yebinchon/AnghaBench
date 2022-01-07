
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fchdir_lock ;
 int unlock (int *) ;

__attribute__((used)) static void unlock_fchdir() {
    unlock(&fchdir_lock);
}
