
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tree_iterator_test (char*,char*,int *,char*,int ,int *) ;

void test_iterator_tree__range_empty_2(void)
{
 tree_iterator_test(
  "attr", "24fa9a9fc4e202313e24b648087495441dab432b",
  ((void*)0), ".aaa_empty_before", 0, ((void*)0));
}
