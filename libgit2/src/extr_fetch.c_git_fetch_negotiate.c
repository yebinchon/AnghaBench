
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* negotiate_fetch ) (TYPE_2__*,int ,int const* const*,int ) ;} ;
typedef TYPE_2__ git_transport ;
typedef int git_remote_head ;
struct TYPE_7__ {int length; scalar_t__ contents; } ;
struct TYPE_9__ {TYPE_1__ refs; int repo; scalar_t__ need_pack; TYPE_2__* transport; } ;
typedef TYPE_3__ git_remote ;
typedef int git_fetch_options ;


 int GIT_ERROR_NET ;
 scalar_t__ filter_wants (TYPE_3__*,int const*) ;
 int git_error_set (int ,char*) ;
 int stub1 (TYPE_2__*,int ,int const* const*,int ) ;

int git_fetch_negotiate(git_remote *remote, const git_fetch_options *opts)
{
 git_transport *t = remote->transport;

 remote->need_pack = 0;

 if (filter_wants(remote, opts) < 0) {
  git_error_set(GIT_ERROR_NET, "failed to filter the reference list for wants");
  return -1;
 }


 if (!remote->need_pack)
  return 0;





 return t->negotiate_fetch(t,
  remote->repo,
  (const git_remote_head * const *)remote->refs.contents,
  remote->refs.length);
}
