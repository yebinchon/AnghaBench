
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* finddevice ) (char const*) ;} ;


 TYPE_1__ dt_ops ;
 void* stub1 (char const*) ;

__attribute__((used)) static inline void *finddevice(const char *name)
{
 return (dt_ops.finddevice) ? dt_ops.finddevice(name) : ((void*)0);
}
