
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _obj ;
 int _odb ;
 int _repo ;
 int git_odb_free (int ) ;
 int git_odb_object_free (int ) ;
 int git_repository_free (int ) ;

void test_odb_backend_mempack__cleanup(void)
{
 git_odb_object_free(_obj);
 git_odb_free(_odb);
 git_repository_free(_repo);
}
