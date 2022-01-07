
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree_ext_large_t ;
typedef int object_id_t ;
struct TYPE_7__ {scalar_t__ data; scalar_t__ tot_entries; } ;
typedef TYPE_1__ metafile_t ;
struct TYPE_8__ {int * A; scalar_t__ N; int ** root; } ;
typedef TYPE_2__ listree_direct_t ;
struct TYPE_9__ {int metafile_index; int * o_tree; } ;
typedef TYPE_3__ list_t ;
typedef int list_id_t ;
typedef int array_object_id_t ;


 int * NILL ;
 TYPE_3__* __get_list_f (int ,int) ;
 int assert (int ) ;
 int find_metafile (int ) ;
 TYPE_1__* get_metafile_ptr (int) ;
 int * listree_lookup_large (TYPE_2__*,int ,int*) ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;

int entry_exists (list_id_t list_id, object_id_t object_id) {
  if (metafile_mode && prepare_list_metafile (list_id, -1) < 0) {
    assert (0);
    return 0;
  }
  list_t *L = __get_list_f (list_id, -1);
  int metafile_index = -1;

  listree_direct_t OTree;
  tree_ext_large_t *Root;

  if (!L) {
    metafile_index = find_metafile (list_id);
    if (metafile_index < 0) {
      return 0;
    }
    Root = NILL;
    OTree.root = &Root;
  } else {
    metafile_index = L->metafile_index;
    OTree.root = &L->o_tree;
  }

  if (metafile_index >= 0) {
    metafile_t *M = get_metafile_ptr (metafile_index);
    OTree.N = M->tot_entries;
    OTree.A = (array_object_id_t *) M->data;
  } else {
    OTree.N = 0;
    OTree.A = 0;
  }

  int temp_id;
  tree_ext_large_t *T = listree_lookup_large (&OTree, object_id, &temp_id);

  return T ? 1 : 0;
}
