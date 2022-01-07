
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_list_id_t ;
typedef int list_id_t ;


 int assert (int *) ;
 int list_id_ints ;
 int memcpy (int ,int ,int) ;

void copy_list_id (var_list_id_t *dst, list_id_t src) {
  assert (dst);



  *dst = src;

}
