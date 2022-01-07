
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_COMMIT ;
 int assert_peel_generic (int ,char*,int ,char*,int ) ;
 int g_peel_repo ;

void test_refs_peel__can_peel_fully_peeled_packed_refs(void)
{
 assert_peel_generic(g_peel_repo,
       "refs/tags/tag-inside-tags", GIT_OBJECT_ANY,
       "0df1a5865c8abfc09f1f2182e6a31be550e99f07",
       GIT_OBJECT_COMMIT);
 assert_peel_generic(g_peel_repo,
       "refs/foo/tag-outside-tags", GIT_OBJECT_ANY,
       "0df1a5865c8abfc09f1f2182e6a31be550e99f07",
       GIT_OBJECT_COMMIT);
}
