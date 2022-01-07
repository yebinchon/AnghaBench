
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* set_callbacks ) (TYPE_1__*,int ,int *,int ,int ) ;} ;
typedef TYPE_1__ git_transport ;
struct TYPE_7__ {int payload; int certificate_check; int sideband_progress; } ;
typedef TYPE_2__ git_remote_callbacks ;


 int stub1 (TYPE_1__*,int ,int *,int ,int ) ;

int set_transport_callbacks(git_transport *t, const git_remote_callbacks *cbs)
{
 if (!t->set_callbacks || !cbs)
  return 0;

 return t->set_callbacks(t, cbs->sideband_progress, ((void*)0),
    cbs->certificate_check, cbs->payload);
}
