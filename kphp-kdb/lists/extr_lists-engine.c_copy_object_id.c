
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_object_id_t ;
typedef int object_id_t ;


 int assert (int *) ;
 int memcpy (int ,int ,int) ;
 int object_id_ints ;

void copy_object_id (var_object_id_t *dst, object_id_t src) {
  assert (dst);



  *dst = src;

}
