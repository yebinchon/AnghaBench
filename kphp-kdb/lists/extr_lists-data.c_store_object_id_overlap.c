
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;


 int OBJECT_ID_INTS ;
 int memmove (int*,int ,int ) ;
 int object_id_bytes ;

__attribute__((used)) static inline void store_object_id_overlap (int **P, object_id_t object_id) {


  int *PVal = *P;



  *(object_id_t *)PVal = object_id;

  *P = PVal + OBJECT_ID_INTS;
}
