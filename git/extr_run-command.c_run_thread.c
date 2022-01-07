
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async {intptr_t (* proc ) (int ,int ,int ) ;int data; int proc_out; int proc_in; scalar_t__ isolate_sigpipe; } ;
typedef int sigset_t ;


 int SIGPIPE ;
 int SIG_BLOCK ;
 int async_key ;
 intptr_t error (char*) ;
 int pthread_setspecific (int ,struct async*) ;
 scalar_t__ pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 intptr_t stub1 (int ,int ,int ) ;

__attribute__((used)) static void *run_thread(void *data)
{
 struct async *async = data;
 intptr_t ret;

 if (async->isolate_sigpipe) {
  sigset_t mask;
  sigemptyset(&mask);
  sigaddset(&mask, SIGPIPE);
  if (pthread_sigmask(SIG_BLOCK, &mask, ((void*)0)) < 0) {
   ret = error("unable to block SIGPIPE in async thread");
   return (void *)ret;
  }
 }

 pthread_setspecific(async_key, async);
 ret = async->proc(async->proc_in, async->proc_out, async->data);
 return (void *)ret;
}
