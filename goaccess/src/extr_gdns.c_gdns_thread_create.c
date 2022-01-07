
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thread; } ;


 int FATAL (char*,int) ;
 int active_gdns ;
 int dns_worker ;
 TYPE_1__ gdns_thread ;
 int pthread_create (int *,int *,void*,int *) ;
 int pthread_detach (int ) ;

void
gdns_thread_create (void)
{
  int th;

  active_gdns = 1;
  th = pthread_create (&(gdns_thread.thread), ((void*)0), (void *) &dns_worker, ((void*)0));
  if (th)
    FATAL ("Return code from pthread_create(): %d", th);
  pthread_detach (gdns_thread.thread);
}
