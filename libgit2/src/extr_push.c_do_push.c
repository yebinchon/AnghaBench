
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int (* push ) (TYPE_3__*,TYPE_5__*,TYPE_4__ const*) ;} ;
typedef TYPE_3__ git_transport ;
struct TYPE_16__ {int (* push_negotiation ) (int const**,int ,int ) ;int payload; scalar_t__ pack_progress; } ;
typedef TYPE_4__ git_remote_callbacks ;
typedef int git_push_update ;
struct TYPE_14__ {int length; scalar_t__ contents; } ;
struct TYPE_17__ {int pb; TYPE_2__ updates; int pb_parallelism; int repo; TYPE_1__* remote; } ;
typedef TYPE_5__ git_push ;
struct TYPE_13__ {TYPE_3__* transport; } ;


 int GIT_ERROR_NET ;
 int calculate_work (TYPE_5__*) ;
 int git_error_set (int ,char*) ;
 int git_packbuilder_free (int ) ;
 int git_packbuilder_new (int *,int ) ;
 int git_packbuilder_set_callbacks (int ,scalar_t__,int ) ;
 int git_packbuilder_set_threads (int ,int ) ;
 int queue_objects (TYPE_5__*) ;
 int stub1 (int const**,int ,int ) ;
 int stub2 (TYPE_3__*,TYPE_5__*,TYPE_4__ const*) ;

__attribute__((used)) static int do_push(git_push *push, const git_remote_callbacks *callbacks)
{
 int error = 0;
 git_transport *transport = push->remote->transport;

 if (!transport->push) {
  git_error_set(GIT_ERROR_NET, "remote transport doesn't support push");
  error = -1;
  goto on_error;
 }







 if ((error = git_packbuilder_new(&push->pb, push->repo)) < 0)
  goto on_error;

 git_packbuilder_set_threads(push->pb, push->pb_parallelism);

 if (callbacks && callbacks->pack_progress)
  if ((error = git_packbuilder_set_callbacks(push->pb, callbacks->pack_progress, callbacks->payload)) < 0)
   goto on_error;

 if ((error = calculate_work(push)) < 0)
  goto on_error;

 if (callbacks && callbacks->push_negotiation &&
     (error = callbacks->push_negotiation((const git_push_update **) push->updates.contents,
       push->updates.length, callbacks->payload)) < 0)
     goto on_error;

 if ((error = queue_objects(push)) < 0 ||
     (error = transport->push(transport, push, callbacks)) < 0)
  goto on_error;

on_error:
 git_packbuilder_free(push->pb);
 return error;
}
