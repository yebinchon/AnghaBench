
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cancel; int read_flags; int is_connected; int ls; int free; int close; int push; int download_pack; int negotiate_fetch; int connect; int set_callbacks; int version; } ;
struct TYPE_7__ {int * owner; int refs; TYPE_1__ parent; } ;
typedef TYPE_2__ transport_local ;
typedef int git_transport ;
typedef int git_remote ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_TRANSPORT_VERSION ;
 int GIT_UNUSED (void*) ;
 TYPE_2__* git__calloc (int,int) ;
 int git__free (TYPE_2__*) ;
 int git_vector_init (int *,int ,int *) ;
 int local_cancel ;
 int local_close ;
 int local_connect ;
 int local_download_pack ;
 int local_free ;
 int local_is_connected ;
 int local_ls ;
 int local_negotiate_fetch ;
 int local_push ;
 int local_read_flags ;
 int local_set_callbacks ;

int git_transport_local(git_transport **out, git_remote *owner, void *param)
{
 int error;
 transport_local *t;

 GIT_UNUSED(param);

 t = git__calloc(1, sizeof(transport_local));
 GIT_ERROR_CHECK_ALLOC(t);

 t->parent.version = GIT_TRANSPORT_VERSION;
 t->parent.set_callbacks = local_set_callbacks;
 t->parent.connect = local_connect;
 t->parent.negotiate_fetch = local_negotiate_fetch;
 t->parent.download_pack = local_download_pack;
 t->parent.push = local_push;
 t->parent.close = local_close;
 t->parent.free = local_free;
 t->parent.ls = local_ls;
 t->parent.is_connected = local_is_connected;
 t->parent.read_flags = local_read_flags;
 t->parent.cancel = local_cancel;

 if ((error = git_vector_init(&t->refs, 0, ((void*)0))) < 0) {
  git__free(t);
  return error;
 }

 t->owner = owner;

 *out = (git_transport *) t;

 return 0;
}
