
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_off_t ;
typedef int git_map ;
typedef int git_file ;


 int GIT_MAP_SHARED ;
 int GIT_PROT_READ ;
 int p_mmap (int *,size_t,int ,int ,int ,int ) ;

int git_futils_mmap_ro(git_map *out, git_file fd, git_off_t begin, size_t len)
{
 return p_mmap(out, len, GIT_PROT_READ, GIT_MAP_SHARED, fd, begin);
}
