
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_TAG ;
 int assert_peel_generic (int ,char*,int ,char*,int ) ;
 int g_peel_repo ;

void test_refs_peel__can_peel_fully_peeled_tag_to_tag(void)
{
 assert_peel_generic(g_peel_repo,
       "refs/tags/tag-inside-tags", GIT_OBJECT_TAG,
       "c2596aa0151888587ec5c0187f261e63412d9e11",
       GIT_OBJECT_TAG);
 assert_peel_generic(g_peel_repo,
       "refs/foo/tag-outside-tags", GIT_OBJECT_TAG,
       "c2596aa0151888587ec5c0187f261e63412d9e11",
       GIT_OBJECT_TAG);
}
