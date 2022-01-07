
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int git_rwlock_free (int *) ;
 TYPE_1__ stream_registry ;

__attribute__((used)) static void shutdown_stream_registry(void)
{
 git_rwlock_free(&stream_registry.lock);
}
