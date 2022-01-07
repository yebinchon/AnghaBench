
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* get_parent ) (char const*) ;} ;


 TYPE_1__ dt_ops ;
 void* stub1 (char const*) ;

__attribute__((used)) static inline void *get_parent(const char *devp)
{
 return dt_ops.get_parent ? dt_ops.get_parent(devp) : ((void*)0);
}
