
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int retval; int id; } ;
typedef TYPE_1__ SDL_Thread ;


 int assert (TYPE_1__*) ;
 int pthread_join (int ,int *) ;

void SDL_WaitThread(SDL_Thread *thread, int *status)
{
    assert(thread);
    if (!thread)
        return;

    pthread_join(thread->id, ((void*)0));

    if (status)
        *status = thread->retval;
}
