
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* download_pack ) (TYPE_1__*,int ,int *,int *,void*) ;} ;
typedef TYPE_1__ git_transport ;
struct TYPE_8__ {void* payload; int * transfer_progress; } ;
typedef TYPE_2__ git_remote_callbacks ;
struct TYPE_9__ {int stats; int repo; int need_pack; TYPE_1__* transport; } ;
typedef TYPE_3__ git_remote ;
typedef int * git_indexer_progress_cb ;


 int stub1 (TYPE_1__*,int ,int *,int *,void*) ;

int git_fetch_download_pack(git_remote *remote, const git_remote_callbacks *callbacks)
{
 git_transport *t = remote->transport;
 git_indexer_progress_cb progress = ((void*)0);
 void *payload = ((void*)0);

 if (!remote->need_pack)
  return 0;

 if (callbacks) {
  progress = callbacks->transfer_progress;
  payload = callbacks->payload;
 }

 return t->download_pack(t, remote->repo, &remote->stats, progress, payload);
}
