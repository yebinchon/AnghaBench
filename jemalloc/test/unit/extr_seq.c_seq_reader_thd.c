
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ thd_data_t ;
struct TYPE_6__ {int* arr; } ;
typedef TYPE_2__ data_t ;


 int assert_d_le (int,int,char*) ;
 int assert_data (TYPE_2__*) ;
 int seq_try_load_data (TYPE_2__*,int *) ;

__attribute__((used)) static void *
seq_reader_thd(void *arg) {
 thd_data_t *thd_data = (thd_data_t *)arg;
 int iter = 0;
 data_t local_data;
 while (iter < 1000 * 1000 - 1) {
  bool success = seq_try_load_data(&local_data, &thd_data->data);
  if (success) {
   assert_data(&local_data);
   assert_d_le(iter, local_data.arr[0],
       "Seq read went back in time.");
   iter = local_data.arr[0];
  }
 }
 return ((void*)0);
}
