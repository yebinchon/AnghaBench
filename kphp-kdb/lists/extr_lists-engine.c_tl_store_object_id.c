
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ object_id_t ;


 int object_id_ints ;
 int tl_store_int (scalar_t__) ;
 int tl_store_long (scalar_t__) ;
 int tl_store_string_data (char*,int) ;

int tl_store_object_id (object_id_t id) {





  tl_store_int (id);

  return 0;
}
