
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_repo ;
 int test_object_and_ref_inrepo (char const*,char const*,char const*,int ,int) ;

__attribute__((used)) static void test_object_and_ref(const char *spec, const char *expected_oid, const char *expected_refname)
{
 test_object_and_ref_inrepo(spec, expected_oid, expected_refname, g_repo, 1);
}
