
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; } ;
typedef TYPE_1__ tree_ext_small_t ;


 int new_total_entries ;
 int writeout_object_id (int ) ;

__attribute__((used)) static int tree_write_object_id_indirect (tree_ext_small_t *T) {
  writeout_object_id (T->x);
  ++new_total_entries;
  return 0;
}
