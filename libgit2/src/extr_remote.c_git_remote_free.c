
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* name; struct TYPE_6__* pushurl; struct TYPE_6__* url; int push; int passive_refspecs; int active_refspecs; int refspecs; int refs; TYPE_2__* transport; } ;
typedef TYPE_1__ git_remote ;
struct TYPE_7__ {int (* free ) (TYPE_2__*) ;} ;


 int free_refspecs (int *) ;
 int git__free (TYPE_1__*) ;
 int git_push_free (int ) ;
 int git_remote_disconnect (TYPE_1__*) ;
 int git_vector_free (int *) ;
 int stub1 (TYPE_2__*) ;

void git_remote_free(git_remote *remote)
{
 if (remote == ((void*)0))
  return;

 if (remote->transport != ((void*)0)) {
  git_remote_disconnect(remote);

  remote->transport->free(remote->transport);
  remote->transport = ((void*)0);
 }

 git_vector_free(&remote->refs);

 free_refspecs(&remote->refspecs);
 git_vector_free(&remote->refspecs);

 free_refspecs(&remote->active_refspecs);
 git_vector_free(&remote->active_refspecs);

 free_refspecs(&remote->passive_refspecs);
 git_vector_free(&remote->passive_refspecs);

 git_push_free(remote->push);
 git__free(remote->url);
 git__free(remote->pushurl);
 git__free(remote->name);
 git__free(remote);
}
