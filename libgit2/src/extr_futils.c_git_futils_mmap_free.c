
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_map ;


 int p_munmap (int *) ;

void git_futils_mmap_free(git_map *out)
{
 p_munmap(out);
}
