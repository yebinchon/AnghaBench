
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async {int tid; int pid; } ;


 int error (char*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int wait_or_whine (int ,char*,int ) ;

int finish_async(struct async *async)
{



 void *ret = (void *)(intptr_t)(-1);

 if (pthread_join(async->tid, &ret))
  error("pthread_join failed");
 return (int)(intptr_t)ret;

}
