
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OBJECT_TREE ;
 scalar_t__ cache_limit ;
 int * g_repo ;
 int object_type ;

void test_object_cache__initialize_cache_no_trees(void)
{
 g_repo = ((void*)0);
 object_type = GIT_OBJECT_TREE;
 cache_limit = 0;
}
