
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t DIFF_STATUS_ADDED ;
 scalar_t__* diff_status_letters ;
 int* filter_bit ;

__attribute__((used)) static void prepare_filter_bits(void)
{
 int i;

 if (!filter_bit[DIFF_STATUS_ADDED]) {
  for (i = 0; diff_status_letters[i]; i++)
   filter_bit[(int) diff_status_letters[i]] = (1 << i);
 }
}
