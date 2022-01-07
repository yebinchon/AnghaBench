
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_transport ;
struct TYPE_5__ {int free; int close; int action; } ;
struct TYPE_6__ {TYPE_1__ parent; int * owner; } ;
typedef TYPE_2__ git_subtransport ;
typedef int git_smart_subtransport ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_UNUSED (void*) ;
 int _git_action ;
 int _git_close ;
 int _git_free ;
 TYPE_2__* git__calloc (int,int) ;

int git_smart_subtransport_git(git_smart_subtransport **out, git_transport *owner, void *param)
{
 git_subtransport *t;

 GIT_UNUSED(param);

 if (!out)
  return -1;

 t = git__calloc(1, sizeof(git_subtransport));
 GIT_ERROR_CHECK_ALLOC(t);

 t->owner = owner;
 t->parent.action = _git_action;
 t->parent.close = _git_close;
 t->parent.free = _git_free;

 *out = (git_smart_subtransport *) t;
 return 0;
}
