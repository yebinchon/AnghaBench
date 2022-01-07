
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
typedef TYPE_1__ thd_data_t ;
typedef int local_data ;
typedef int data_t ;


 int memset (int *,int ,int) ;
 int seq_store_data (int *,int *) ;
 int set_data (int *,int) ;

__attribute__((used)) static void *
seq_writer_thd(void *arg) {
 thd_data_t *thd_data = (thd_data_t *)arg;
 data_t local_data;
 memset(&local_data, 0, sizeof(local_data));
 for (int i = 0; i < 1000 * 1000; i++) {
  set_data(&local_data, i);
  seq_store_data(&thd_data->data, &local_data);
 }
 return ((void*)0);
}
