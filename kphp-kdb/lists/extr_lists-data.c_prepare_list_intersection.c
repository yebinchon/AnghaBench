
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_id_t ;
typedef int array_object_id_t ;


 int __prepare_list_intersection (int ,int,int *,int,int ,int) ;
 int __prepare_list_intersection_intervals (int ,int,int *,int,int ,int) ;
 int id_ints ;
 int list_intersect_x ;
 int list_intersect_x_prefix ;
 int object_id_ints ;
 int report_x ;

int prepare_list_intersection (list_id_t list_id, int mode, array_object_id_t List[], int LL, int have_weights, int _id_ints) {
  id_ints = _id_ints;
  if (id_ints == object_id_ints) {
    report_x = list_intersect_x;
    return __prepare_list_intersection (list_id, mode, List, LL, 0, have_weights);
  } else {
    report_x = list_intersect_x_prefix;
    return __prepare_list_intersection_intervals (list_id, mode, List, LL, 0, have_weights);
  }
}
