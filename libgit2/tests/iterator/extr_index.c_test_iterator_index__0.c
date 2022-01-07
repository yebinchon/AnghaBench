
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int expected_index_0 ;
 int expected_index_oids_0 ;
 int index_iterator_test (char*,int *,int *,int ,int ,int ,int ) ;

void test_iterator_index__0(void)
{
 index_iterator_test(
  "attr", ((void*)0), ((void*)0), 0, ARRAY_SIZE(expected_index_0),
  expected_index_0, expected_index_oids_0);
}
