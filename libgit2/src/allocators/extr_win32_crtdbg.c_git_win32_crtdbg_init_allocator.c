
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_allocator ;


 int GIT_EINVALID ;
 int GIT_UNUSED (int *) ;
 int git_error_set (int ,char*) ;

int git_win32_crtdbg_init_allocator(git_allocator *allocator)
{
 GIT_UNUSED(allocator);
 git_error_set(GIT_EINVALID, "crtdbg memory allocator not available");
 return -1;
}
