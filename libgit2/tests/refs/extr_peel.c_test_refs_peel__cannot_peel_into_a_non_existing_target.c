
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int GIT_OBJECT_TAG ;
 int assert_peel_error (int ,char*,int ) ;

void test_refs_peel__cannot_peel_into_a_non_existing_target(void)
{
 assert_peel_error(GIT_EINVALIDSPEC, "refs/tags/point_to_blob", GIT_OBJECT_TAG);
}
