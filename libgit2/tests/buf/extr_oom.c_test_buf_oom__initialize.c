
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int grealloc; int gmalloc; } ;


 int GIT_OPT_SET_ALLOCATOR ;
 int cl_git_pass (int ) ;
 int git_libgit2_opts (int ,TYPE_1__*) ;
 int git_stdalloc_init_allocator (TYPE_1__*) ;
 TYPE_1__ oom_alloc ;
 int oom_malloc ;
 int oom_realloc ;
 TYPE_1__ std_alloc ;

void test_buf_oom__initialize(void)
{
 git_stdalloc_init_allocator(&std_alloc);
 git_stdalloc_init_allocator(&oom_alloc);

 oom_alloc.gmalloc = oom_malloc;
 oom_alloc.grealloc = oom_realloc;

 cl_git_pass(git_libgit2_opts(GIT_OPT_SET_ALLOCATOR, &oom_alloc));
}
