
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture (char*) ;
 int ensure_no_refname_starts_with_a_forward_slash (int ) ;

void test_refs_listall__from_repository_opened_through_gitdir_path(void)
{
 ensure_no_refname_starts_with_a_forward_slash(cl_fixture("testrepo.git"));
}
