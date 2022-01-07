
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ref; struct TYPE_4__* msg; } ;
typedef TYPE_1__ push_status ;


 int git__free (TYPE_1__*) ;

void git_push_status_free(push_status *status)
{
 if (status == ((void*)0))
  return;

 git__free(status->msg);
 git__free(status->ref);
 git__free(status);
}
