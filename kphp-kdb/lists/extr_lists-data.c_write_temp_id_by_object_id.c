
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;


 int OTree ;
 int listree_get_pos_large (int *,int ,int ) ;
 int writeout_int (int ) ;

__attribute__((used)) static int write_temp_id_by_object_id (object_id_t object_id) {
  writeout_int (listree_get_pos_large (&OTree, object_id, 0));
  return 0;
}
