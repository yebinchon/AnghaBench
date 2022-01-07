
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_allocator ;


 int git__allocator ;
 int memcpy (int *,int *,int) ;
 int setup_default_allocator () ;

int git_allocator_setup(git_allocator *allocator)
{
 if (!allocator)
  return setup_default_allocator();

 memcpy(&git__allocator, allocator, sizeof(*allocator));
 return 0;
}
