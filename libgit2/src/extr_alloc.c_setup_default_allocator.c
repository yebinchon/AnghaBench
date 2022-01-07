
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__allocator ;
 int git_stdalloc_init_allocator (int *) ;
 int git_win32_crtdbg_init_allocator (int *) ;

__attribute__((used)) static int setup_default_allocator(void)
{



 return git_stdalloc_init_allocator(&git__allocator);

}
