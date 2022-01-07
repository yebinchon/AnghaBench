
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t_ ;
struct TYPE_4__ {TYPE_1__* sighand; } ;
struct TYPE_3__ {int lock; } ;


 TYPE_2__* current ;
 int lock (int *) ;
 int sigmask_set_temp_unlocked (int ) ;
 int unlock (int *) ;

void sigmask_set_temp(sigset_t_ mask) {
    lock(&current->sighand->lock);
    sigmask_set_temp_unlocked(mask);
    unlock(&current->sighand->lock);
}
