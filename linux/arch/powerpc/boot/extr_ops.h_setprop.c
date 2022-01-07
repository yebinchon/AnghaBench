
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* setprop ) (void*,char const*,void const*,int) ;} ;


 TYPE_1__ dt_ops ;
 int stub1 (void*,char const*,void const*,int) ;

__attribute__((used)) static inline int setprop(void *devp, const char *name,
                          const void *buf, int buflen)
{
 return (dt_ops.setprop) ? dt_ops.setprop(devp, name, buf, buflen) : -1;
}
