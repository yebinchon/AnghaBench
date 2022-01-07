
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;


 int GIT_UNUSED (void*) ;
 void* git_vector_get (int const*,size_t) ;

__attribute__((used)) static int remove_ones(const git_vector *v, size_t idx, void *p)
{
 GIT_UNUSED(p);
 return (git_vector_get(v, idx) == (void *)0x001);
}
