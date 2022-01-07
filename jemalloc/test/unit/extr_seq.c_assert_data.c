
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* arr; } ;
typedef TYPE_1__ data_t ;


 int assert_d_eq (int,int,char*) ;

__attribute__((used)) static void
assert_data(data_t *data) {
 int num = data->arr[0];
 for (int i = 0; i < 10; i++) {
  assert_d_eq(num, data->arr[i], "Data consistency error");
 }
}
