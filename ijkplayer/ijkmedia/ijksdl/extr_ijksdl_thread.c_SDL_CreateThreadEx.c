
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* func ) (void*) ;int id; int name; void* data; } ;
typedef TYPE_1__ SDL_Thread ;


 int SDL_RunThread ;
 int pthread_create (int *,int *,int ,TYPE_1__*) ;
 int strlcpy (int ,char const*,int) ;

SDL_Thread *SDL_CreateThreadEx(SDL_Thread *thread, int (*fn)(void *), void *data, const char *name)
{
    thread->func = fn;
    thread->data = data;
    strlcpy(thread->name, name, sizeof(thread->name) - 1);
    int retval = pthread_create(&thread->id, ((void*)0), SDL_RunThread, thread);
    if (retval)
        return ((void*)0);

    return thread;
}
