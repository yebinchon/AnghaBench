
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* sm_t ;
typedef TYPE_2__* iwdpm_t ;
typedef TYPE_3__* iwdp_t ;
typedef int iwdp_status ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_7__ {TYPE_1__* sm; } ;
struct TYPE_6__ {int (* send ) (TYPE_1__*,int,char const*,size_t,int *) ;} ;


 int stub1 (TYPE_1__*,int,char const*,size_t,int *) ;

iwdp_status iwdpm_send(iwdp_t iwdp, int fd, const char *data, size_t length) {
  sm_t sm = ((iwdpm_t)iwdp->state)->sm;
  return sm->send(sm, fd, data, length, ((void*)0));
}
