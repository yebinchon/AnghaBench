
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _repo ;
 int git_repository_free (int ) ;

void test_odb_backend_nobackend__cleanup(void)
{
 git_repository_free(_repo);
}
