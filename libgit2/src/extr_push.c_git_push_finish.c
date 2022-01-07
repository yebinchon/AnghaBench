
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_remote_callbacks ;
struct TYPE_4__ {int unpack_ok; int remote; int connection; } ;
typedef TYPE_1__ git_push ;


 int GIT_DIRECTION_PUSH ;
 int GIT_ERROR_NET ;
 int do_push (TYPE_1__*,int const*) ;
 int filter_refs (int ) ;
 int git_error_set (int ,char*) ;
 int git_remote__connect (int ,int ,int const*,int *) ;
 int git_remote_connected (int ) ;

int git_push_finish(git_push *push, const git_remote_callbacks *callbacks)
{
 int error;

 if (!git_remote_connected(push->remote) &&
     (error = git_remote__connect(push->remote, GIT_DIRECTION_PUSH, callbacks, &push->connection)) < 0)
  return error;

 if ((error = filter_refs(push->remote)) < 0 ||
     (error = do_push(push, callbacks)) < 0)
  return error;

 if (!push->unpack_ok) {
  error = -1;
  git_error_set(GIT_ERROR_NET, "unpacking the sent packfile failed on the remote");
 }

 return error;
}
