
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int not_full; int not_empty; } ;
typedef int GDnsQueue ;


 int FATAL (char*) ;
 int QUEUE_SIZE ;
 int gdns_queue ;
 TYPE_1__ gdns_thread ;
 int gqueue_init (int ,int ) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int xmalloc (int) ;

void
gdns_init (void)
{
  gdns_queue = xmalloc (sizeof (GDnsQueue));
  gqueue_init (gdns_queue, QUEUE_SIZE);

  if (pthread_cond_init (&(gdns_thread.not_empty), ((void*)0)))
    FATAL ("Failed init thread condition");

  if (pthread_cond_init (&(gdns_thread.not_full), ((void*)0)))
    FATAL ("Failed init thread condition");

  if (pthread_mutex_init (&(gdns_thread.mutex), ((void*)0)))
    FATAL ("Failed init thread mutex");
}
