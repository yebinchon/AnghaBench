
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int punt; } ;
struct TYPE_4__ {TYPE_1__ sockrestart; } ;


 TYPE_2__* current ;
 int lock (int *) ;
 int sockrestart_lock ;
 int unlock (int *) ;

bool sockrestart_should_restart_listen_wait() {
    lock(&sockrestart_lock);
    bool punt = current->sockrestart.punt;
    current->sockrestart.punt = 0;
    unlock(&sockrestart_lock);
    return punt;
}
