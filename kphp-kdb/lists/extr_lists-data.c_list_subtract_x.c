
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;


 scalar_t__ IF_LISTS_Z (int) ;
 scalar_t__* LA ;
 scalar_t__* LE ;
 scalar_t__ MAX_OBJECT_ID ;
 int OARR_ENTRY (scalar_t__*,int ) ;
 int object_id_compare (int ,int ) ;
 int object_id_ints_adjusted ;
 int store_object_id_intersect_v (int ) ;

__attribute__((used)) static inline int list_subtract_x (object_id_t x) {
  int p;
  while (IF_LISTS_Z(LA < LE) && (p = object_id_compare (OARR_ENTRY (LA, 0), x)) < 0) {
    store_object_id_intersect_v (OARR_ENTRY (LA, 0));
    LA += object_id_ints_adjusted;
  }





  if (*LA == MAX_OBJECT_ID) {
    return 0;
  }

  if (!p) {
    LA += object_id_ints_adjusted;
  }
  return 0;
}
