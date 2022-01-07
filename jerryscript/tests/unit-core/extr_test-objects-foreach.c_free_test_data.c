
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT (int) ;
 int test_data ;

__attribute__((used)) static void free_test_data (void *data_p)
{
  TEST_ASSERT ((int *) data_p == &test_data);
}
