
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_object_and_ref (char*,char*,int *) ;

void test_refs_revparse__ext_returns_NULL_reference_when_expression_points_at_a_tree_content(void)
{
    test_object_and_ref(
  "tags/test:readme.txt",
  "0266163a49e280c4f5ed1e08facd36a2bd716bcf",
        ((void*)0));
}
