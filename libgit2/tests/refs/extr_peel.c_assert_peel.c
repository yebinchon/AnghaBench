
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object_t ;


 int assert_peel_generic (int ,char const*,int ,char const*,int ) ;
 int g_repo ;

__attribute__((used)) static void assert_peel(
 const char *ref_name,
 git_object_t requested_type,
 const char* expected_sha,
 git_object_t expected_type)
{
 assert_peel_generic(g_repo, ref_name, requested_type,
       expected_sha, expected_type);
}
