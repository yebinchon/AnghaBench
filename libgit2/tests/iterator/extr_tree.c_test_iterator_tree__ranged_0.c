
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expected_tree_ranged_0 ;
 int tree_iterator_test (char*,char*,char*,char*,int,int ) ;

void test_iterator_tree__ranged_0(void)
{
 tree_iterator_test(
  "attr", "24fa9a9fc4e202313e24b648087495441dab432b",
  "git", "root",
  7, expected_tree_ranged_0);
}
