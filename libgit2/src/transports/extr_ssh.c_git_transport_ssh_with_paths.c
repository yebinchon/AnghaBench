
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ wrapped; } ;
typedef TYPE_1__ transport_smart ;
struct TYPE_7__ {void* cmd_receivepack; void* cmd_uploadpack; } ;
typedef TYPE_2__ ssh_subtransport ;
typedef int git_transport ;
struct TYPE_8__ {int count; int * strings; } ;
typedef TYPE_3__ git_strarray ;
struct TYPE_9__ {int * member_2; int member_1; int member_0; } ;
typedef TYPE_4__ git_smart_subtransport_definition ;
typedef void git_remote ;


 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_CHECK_ALLOC (void*) ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_SSH ;
 int GIT_UNUSED (void*) ;
 int assert (int **) ;
 void* git__strdup (int ) ;
 int git_error_set (int ,char*) ;
 int git_smart_subtransport_ssh ;
 int git_transport_smart (int **,void*,TYPE_4__*) ;

int git_transport_ssh_with_paths(git_transport **out, git_remote *owner, void *payload)
{
 GIT_UNUSED(owner);
 GIT_UNUSED(payload);

 assert(out);
 *out = ((void*)0);

 git_error_set(GIT_ERROR_INVALID, "cannot create SSH transport. Library was built without SSH support");
 return -1;

}
