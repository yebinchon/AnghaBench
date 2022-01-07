
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_remote_head ;
struct TYPE_5__ {TYPE_2__* transport; } ;
typedef TYPE_1__ git_remote ;
struct TYPE_6__ {int (* ls ) (int const***,size_t*,TYPE_2__*) ;} ;


 int GIT_ERROR_NET ;
 int assert (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 int stub1 (int const***,size_t*,TYPE_2__*) ;

int git_remote_ls(const git_remote_head ***out, size_t *size, git_remote *remote)
{
 assert(remote);

 if (!remote->transport) {
  git_error_set(GIT_ERROR_NET, "this remote has never connected");
  return -1;
 }

 return remote->transport->ls(out, size, remote->transport);
}
