
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int test_object_and_ref_inrepo (char const*,char const*,int *,int *,int) ;

__attribute__((used)) static void test_object_inrepo(const char *spec, const char *expected_oid, git_repository *repo)
{
 test_object_and_ref_inrepo(spec, expected_oid, ((void*)0), repo, 0);
}
