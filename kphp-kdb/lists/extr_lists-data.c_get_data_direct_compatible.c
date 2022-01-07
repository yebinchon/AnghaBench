
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;
typedef int listree_t ;
typedef int listree_direct_t ;


 int get_data_direct (int *,int) ;

__attribute__((used)) static inline object_id_t get_data_direct_compatible (listree_t *LT, int index) {
  return get_data_direct ((listree_direct_t *) LT, index);
}
