
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int expected_index_oids_range ;
 int expected_index_range ;
 int index_iterator_test (char*,char*,char*,int ,int ,int ,int ) ;

void test_iterator_index__range(void)
{
 index_iterator_test(
  "attr", "root", "root", 0, ARRAY_SIZE(expected_index_range),
  expected_index_range, expected_index_oids_range);
}
