
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* arr; } ;
typedef TYPE_1__ data_t ;



__attribute__((used)) static void
set_data(data_t *data, int num) {
 for (int i = 0; i < 10; i++) {
  data->arr[i] = num;
 }
}
