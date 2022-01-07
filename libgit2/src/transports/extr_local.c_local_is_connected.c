
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connected; } ;
typedef TYPE_1__ transport_local ;
typedef int git_transport ;



__attribute__((used)) static int local_is_connected(git_transport *transport)
{
 transport_local *t = (transport_local *)transport;

 return t->connected;
}
