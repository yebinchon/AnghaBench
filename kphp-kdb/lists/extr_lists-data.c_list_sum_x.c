
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
 scalar_t__ Sum ;
 scalar_t__ __have_weights ;
 int object_id_compare (int ,int ) ;
 int object_id_ints_adjusted ;

__attribute__((used)) static inline int list_sum_x (object_id_t x) {
  int p;
  while (IF_LISTS_Z(LA < LE) && (p = object_id_compare (OARR_ENTRY (LA, 0), x)) < 0) {
    LA += object_id_ints_adjusted;
  }






  if (*LA == MAX_OBJECT_ID) {
    return 0;
  }

  if (!p) {
    LA += object_id_ints_adjusted;
    Sum += __have_weights ? LA[-1] : 1;
  }
  return 0;
}
