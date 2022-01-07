
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_UNUSED (void*) ;
 int git_repository_init (int **,char const*,int) ;

__attribute__((used)) static int default_repository_create(git_repository **out, const char *path, int bare, void *payload)
{
 GIT_UNUSED(payload);

 return git_repository_init(out, path, bare);
}
