
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * gmalloc; } ;


 TYPE_1__ git__allocator ;
 int setup_default_allocator () ;

int git_allocator_global_init(void)
{




 if (git__allocator.gmalloc != ((void*)0))
  return 0;

 return setup_default_allocator();
}
