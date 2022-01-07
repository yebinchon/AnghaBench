
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ssize_t ;
typedef TYPE_1__* sm_t ;
typedef int sm_status ;
typedef TYPE_2__* iwdpm_t ;
typedef TYPE_3__* iwdp_t ;
struct TYPE_8__ {int (* on_recv ) (TYPE_3__*,int,void*,char const*,int ) ;} ;
struct TYPE_7__ {TYPE_3__* iwdp; } ;
struct TYPE_6__ {scalar_t__ state; } ;


 int stub1 (TYPE_3__*,int,void*,char const*,int ) ;

sm_status iwdpm_on_recv(sm_t sm, int fd, void *value,
    const char *buf, ssize_t length) {
  iwdp_t iwdp = ((iwdpm_t)sm->state)->iwdp;
  return iwdp->on_recv(iwdp, fd, value, buf, length);
}
