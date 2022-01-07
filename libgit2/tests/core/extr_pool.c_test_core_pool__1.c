
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int page_size; } ;
typedef TYPE_1__ git_pool ;


 int cl_assert (int ) ;
 int cl_assert_equal_i (int,int ) ;
 int git_pool__open_pages (TYPE_1__*) ;
 int git_pool_clear (TYPE_1__*) ;
 int git_pool_init (TYPE_1__*,int) ;
 int * git_pool_malloc (TYPE_1__*,int) ;

void test_core_pool__1(void)
{
 int i;
 git_pool p;

 git_pool_init(&p, 1);
 p.page_size = 4000;

 for (i = 2010; i > 0; i--)
  cl_assert(git_pool_malloc(&p, i) != ((void*)0));



 cl_assert_equal_i(591, git_pool__open_pages(&p));

 git_pool_clear(&p);

 git_pool_init(&p, 1);
 p.page_size = 4120;

 for (i = 2010; i > 0; i--)
  cl_assert(git_pool_malloc(&p, i) != ((void*)0));



 cl_assert_equal_i(sizeof(void *) == 8 ? 575 : 573, git_pool__open_pages(&p));

 git_pool_clear(&p);
}
