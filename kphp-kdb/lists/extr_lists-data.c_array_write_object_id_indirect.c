
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int object_id_t ;
struct TYPE_3__ {int * IA; } ;
typedef TYPE_1__ listree_t ;


 int M_obj_id_list ;
 int OARR_ENTRY (int ,int ) ;
 int new_total_entries ;
 int writeout_object_id (int ) ;

__attribute__((used)) static int array_write_object_id_indirect (listree_t *LT, int temp_id) {
  object_id_t object_id = OARR_ENTRY (M_obj_id_list, LT->IA[temp_id]);
  writeout_object_id (object_id);
  ++new_total_entries;
  return 0;
}
