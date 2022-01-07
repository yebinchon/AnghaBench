
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;


 int R_end ;
 int store_object_id_overlap (int *,int ) ;

__attribute__((used)) static inline void store_to_rend_overlap (object_id_t x) {
  store_object_id_overlap (&R_end, x);
}
