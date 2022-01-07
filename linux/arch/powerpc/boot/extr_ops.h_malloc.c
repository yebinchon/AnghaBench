
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* malloc ) (unsigned long) ;} ;


 TYPE_1__ platform_ops ;
 void* stub1 (unsigned long) ;

__attribute__((used)) static inline void *malloc(unsigned long size)
{
 return (platform_ops.malloc) ? platform_ops.malloc(size) : ((void*)0);
}
