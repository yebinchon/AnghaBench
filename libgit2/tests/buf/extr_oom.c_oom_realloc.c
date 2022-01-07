
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* grealloc ) (void*,size_t,char const*,int) ;} ;


 TYPE_1__ std_alloc ;
 void* stub1 (void*,size_t,char const*,int) ;

__attribute__((used)) static void *oom_realloc(void *p, size_t n, const char *file, int line)
{

 return (n > 100) ? ((void*)0) : std_alloc.grealloc(p, n, file, line);
}
