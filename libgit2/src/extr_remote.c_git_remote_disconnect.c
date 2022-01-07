
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* transport; } ;
typedef TYPE_1__ git_remote ;
struct TYPE_7__ {int (* close ) (TYPE_2__*) ;} ;


 int assert (TYPE_1__*) ;
 scalar_t__ git_remote_connected (TYPE_1__*) ;
 int stub1 (TYPE_2__*) ;

void git_remote_disconnect(git_remote *remote)
{
 assert(remote);

 if (git_remote_connected(remote))
  remote->transport->close(remote->transport);
}
