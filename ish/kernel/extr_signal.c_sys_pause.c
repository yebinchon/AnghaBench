
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int_t ;
struct TYPE_4__ {TYPE_1__* sighand; int pause; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ _EINTR ;
 TYPE_2__* current ;
 int lock (int *) ;
 int unlock (int *) ;
 scalar_t__ wait_for (int *,int *,int *) ;

int_t sys_pause() {
    lock(&current->sighand->lock);
    while (wait_for(&current->pause, &current->sighand->lock, ((void*)0)) != _EINTR)
        continue;
    unlock(&current->sighand->lock);
    return _EINTR;
}
