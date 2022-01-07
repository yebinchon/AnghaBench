
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int git_cache__max_storage ;
 int test_blame_simple__trivial_libgit2 () ;

void test_blame_simple__trivial_libgit2_under_cache_pressure(void)
{
 ssize_t old_max_storage = git_cache__max_storage;
 git_cache__max_storage = 1024 * 1024;
 test_blame_simple__trivial_libgit2();
 git_cache__max_storage = old_max_storage;
}
