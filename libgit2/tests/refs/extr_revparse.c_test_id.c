
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revparse_mode_t ;


 int g_repo ;
 int test_id_inrepo (char const*,char const*,char const*,int ,int ) ;

__attribute__((used)) static void test_id(
 const char *spec,
 const char *expected_left,
 const char *expected_right,
 git_revparse_mode_t expected_flags)
{
 test_id_inrepo(spec, expected_left, expected_right, expected_flags, g_repo);
}
