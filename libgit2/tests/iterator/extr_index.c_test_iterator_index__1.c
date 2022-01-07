
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int expected_index_1 ;
 int expected_index_oids_1 ;
 int index_iterator_test (char*,int *,int *,int ,int ,int ,int ) ;

void test_iterator_index__1(void)
{
 index_iterator_test(
  "status", ((void*)0), ((void*)0), 0, ARRAY_SIZE(expected_index_1),
  expected_index_1, expected_index_oids_1);
}
