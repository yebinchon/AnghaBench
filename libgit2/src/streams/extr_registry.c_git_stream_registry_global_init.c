
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int git__on_shutdown (int ) ;
 scalar_t__ git_rwlock_init (int *) ;
 int shutdown_stream_registry ;
 TYPE_1__ stream_registry ;

int git_stream_registry_global_init(void)
{
 if (git_rwlock_init(&stream_registry.lock) < 0)
  return -1;

 git__on_shutdown(shutdown_stream_registry);
 return 0;
}
