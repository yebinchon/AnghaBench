
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;
 void* git__calloc (unsigned int,unsigned int) ;

__attribute__((used)) static void *use_git_alloc(void *opaq, unsigned int count, unsigned int size)
{
 GIT_UNUSED(opaq);
 return git__calloc(count, size);
}
