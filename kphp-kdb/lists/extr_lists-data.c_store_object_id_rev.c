
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;


 int* OBJECT_ID_INTS ;
 int memcpy (int*,int ,int ) ;
 int object_id_bytes ;

__attribute__((used)) static inline void store_object_id_rev (int **P, object_id_t object_id) {


  int *PVal = (*P) - OBJECT_ID_INTS;



  *(object_id_t *)PVal = object_id;

  *P = PVal;
}
