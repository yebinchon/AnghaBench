
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* transport; } ;
typedef TYPE_1__ git_remote ;
struct TYPE_6__ {int (* is_connected ) (TYPE_2__*) ;} ;


 int assert (TYPE_1__ const*) ;
 int stub1 (TYPE_2__*) ;

int git_remote_connected(const git_remote *remote)
{
 assert(remote);

 if (!remote->transport || !remote->transport->is_connected)
  return 0;


 return remote->transport->is_connected(remote->transport);
}
