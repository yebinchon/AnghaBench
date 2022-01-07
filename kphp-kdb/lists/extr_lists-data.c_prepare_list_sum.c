
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_id_t ;
typedef int array_object_id_t ;


 long long Sum ;
 int __prepare_list_intersection (int ,int,int *,int,int ,int) ;
 int __prepare_list_intersection_intervals (int ,int,int *,int,int ,int) ;
 int id_ints ;
 int list_sum_x ;
 int list_sum_x_prefix ;
 int object_id_ints ;
 int report_x ;

long long prepare_list_sum (list_id_t list_id, int mode, array_object_id_t List[], int LL, int have_weights, int _id_ints) {
  id_ints = _id_ints;
  if (id_ints == object_id_ints) {
    report_x = list_sum_x;
    Sum = 0;
    int res = __prepare_list_intersection (list_id, mode, List, LL, 0, have_weights);
    return res < 0 ? res : Sum;
  } else {
    report_x = list_sum_x_prefix;
    Sum = 0;
    int res = __prepare_list_intersection_intervals (list_id, mode, List, LL, 0, have_weights);
    return res < 0 ? res : Sum;
  }
}
