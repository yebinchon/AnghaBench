
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * expected_tree_4 ;
 int tree_iterator_test (char*,char*,char*,char*,int,int *) ;

void test_iterator_tree__4_ranged(void)
{
 tree_iterator_test(
  "attr", "24fa9a9fc4e202313e24b648087495441dab432b",
  "sub", "sub",
  11, &expected_tree_4[12]);
}
