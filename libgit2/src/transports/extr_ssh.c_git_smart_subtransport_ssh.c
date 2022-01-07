
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int transport_smart ;
struct TYPE_5__ {int free; int close; int action; } ;
struct TYPE_6__ {TYPE_1__ parent; int * owner; } ;
typedef TYPE_2__ ssh_subtransport ;
typedef void git_transport ;
typedef int git_smart_subtransport ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_INVALID ;
 int GIT_UNUSED (void*) ;
 int _ssh_action ;
 int _ssh_close ;
 int _ssh_free ;
 int assert (int **) ;
 TYPE_2__* git__calloc (int,int) ;
 int git_error_set (int ,char*) ;

int git_smart_subtransport_ssh(
 git_smart_subtransport **out, git_transport *owner, void *param)
{
 GIT_UNUSED(owner);
 GIT_UNUSED(param);

 assert(out);
 *out = ((void*)0);

 git_error_set(GIT_ERROR_INVALID, "cannot create SSH transport. Library was built without SSH support");
 return -1;

}
