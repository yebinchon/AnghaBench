
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ transport_local ;
typedef int git_transport ;



__attribute__((used)) static int local_read_flags(git_transport *transport, int *flags)
{
 transport_local *t = (transport_local *)transport;

 *flags = t->flags;

 return 0;
}
