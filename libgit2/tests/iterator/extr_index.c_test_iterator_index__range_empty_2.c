
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int index_iterator_test (char*,int *,char*,int ,int ,int *,int *) ;

void test_iterator_index__range_empty_2(void)
{
 index_iterator_test(
  "attr", ((void*)0), ".aaa_empty_before", 0, 0, ((void*)0), ((void*)0));
}
