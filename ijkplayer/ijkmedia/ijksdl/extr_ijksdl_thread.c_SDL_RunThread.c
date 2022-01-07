
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int (* func ) (int ) ;int retval; int name; } ;
typedef TYPE_1__ SDL_Thread ;


 int ALOGI (char*,int,int ) ;
 int SDL_JNI_DetachThreadEnv () ;
 scalar_t__ gettid () ;
 int pthread_self () ;
 int pthread_setname_np (int ,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void *SDL_RunThread(void *data)
{
    SDL_Thread *thread = data;
    ALOGI("SDL_RunThread: [%d] %s\n", (int)gettid(), thread->name);
    pthread_setname_np(pthread_self(), thread->name);
    thread->retval = thread->func(thread->data);



    return ((void*)0);
}
