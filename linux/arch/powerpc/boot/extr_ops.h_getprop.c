
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getprop ) (void*,char const*,void*,int) ;} ;


 TYPE_1__ dt_ops ;
 int stub1 (void*,char const*,void*,int) ;

__attribute__((used)) static inline int getprop(void *devp, const char *name, void *buf, int buflen)
{
 return (dt_ops.getprop) ? dt_ops.getprop(devp, name, buf, buflen) : -1;
}
