
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfe_xiocb {int dummy; } ;


 int cfe_dispfunc (intptr_t,intptr_t) ;
 scalar_t__ cfe_handle ;
 int stub1 (intptr_t,intptr_t) ;

int cfe_iocb_dispatch(struct cfe_xiocb * xiocb)
{
 if (!cfe_dispfunc)
  return -1;
 return (*cfe_dispfunc) ((intptr_t) cfe_handle, (intptr_t) xiocb);
}
