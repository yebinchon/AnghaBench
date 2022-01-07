
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* object_id_t ;
typedef int ltree_x_t ;



__attribute__((used)) static inline object_id_t ltree_x_object_id (ltree_x_t ltx) {





  return (object_id_t)(ltx >> 32);

}
