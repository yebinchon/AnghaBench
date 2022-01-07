
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int index_iterator_test (char*,char*,int *,int ,int ,int *,int *) ;

void test_iterator_index__range_empty_1(void)
{
 index_iterator_test(
  "attr", "z_empty_after", ((void*)0), 0, 0, ((void*)0), ((void*)0));
}
