
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int git_buf ;


 int GIT_REPOSITORY_OPEN_CROSS_FS ;
 int assert (char const*) ;
 int find_repo (int *,int *,int *,int *,char const*,int ,char const*) ;
 int git_buf_sanitize (int *) ;

int git_repository_discover(
 git_buf *out,
 const char *start_path,
 int across_fs,
 const char *ceiling_dirs)
{
 uint32_t flags = across_fs ? GIT_REPOSITORY_OPEN_CROSS_FS : 0;

 assert(start_path);

 git_buf_sanitize(out);

 return find_repo(out, ((void*)0), ((void*)0), ((void*)0), start_path, flags, ceiling_dirs);
}
