
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_repo ;
 int test_object_inrepo (char const*,char const*,int ) ;

__attribute__((used)) static void test_object(const char *spec, const char *expected_oid)
{
 test_object_inrepo(spec, expected_oid, g_repo);
}
