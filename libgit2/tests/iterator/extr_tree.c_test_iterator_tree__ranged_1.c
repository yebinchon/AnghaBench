
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expected_tree_ranged_1 ;
 int tree_iterator_test (char*,char*,char*,char*,int,int ) ;

void test_iterator_tree__ranged_1(void)
{
 tree_iterator_test(
  "attr", "24fa9a9fc4e202313e24b648087495441dab432b",
  "sub/subdir_test2.txt", "sub/subdir_test2.txt",
  1, expected_tree_ranged_1);
}
