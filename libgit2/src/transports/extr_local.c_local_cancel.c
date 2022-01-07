
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cancelled; } ;
typedef TYPE_1__ transport_local ;
typedef int git_transport ;


 int git_atomic_set (int *,int) ;

__attribute__((used)) static void local_cancel(git_transport *transport)
{
 transport_local *t = (transport_local *)transport;

 git_atomic_set(&t->cancelled, 1);
}
