
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;
typedef int listree_t ;


 int LA ;
 int OARR_ENTRY (int ,int ) ;
 int get_array (int *,int) ;
 scalar_t__ object_id_compare_prefix (int ,int ) ;
 int report_x (int ) ;

__attribute__((used)) static void listree_intersect_array_rec_intervals (listree_t *LT, int a, int b, object_id_t upper_bound) {
  if (a > b) {
    return;
  }
  int m = (a + b) >> 1;
  object_id_t x = get_array (LT, m);
  if (object_id_compare_prefix (OARR_ENTRY (LA, 0), x) <= 0) {
    listree_intersect_array_rec_intervals (LT, a, m - 1, x);
  }
  report_x (x);
  if (object_id_compare_prefix (OARR_ENTRY (LA, 0), upper_bound) <= 0) {
    listree_intersect_array_rec_intervals (LT, m + 1, b, upper_bound);
  }
}
