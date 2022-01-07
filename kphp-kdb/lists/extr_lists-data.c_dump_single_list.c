
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int listree_t ;
struct TYPE_6__ {int* list_id; TYPE_1__* o_tree; } ;
typedef TYPE_2__ list_t ;
struct TYPE_5__ {int delta; } ;


 int MAXINT ;
 int M_tot_entries ;
 int OTree ;
 int array_write_object_id ;
 int array_write_object_id_indirect ;
 int assert (int) ;
 int global_dump_fl ;
 int global_dump_mod ;
 int global_dump_rem ;
 int in_array ;
 int in_tree ;
 int listree_get_range (int *,int ,int) ;
 int load_o_tree_sub (int *,int) ;
 int metafile_get_sublist_size (int) ;
 int new_total_entries ;
 int tree_write_object_id ;
 int tree_write_object_id_indirect ;
 int unpack_metafile_pointers (TYPE_2__*) ;
 int writeout_int (int) ;
 int writeout_list_id (int*) ;

int dump_single_list (list_t *L) {
  listree_t OTreeSub;




  int t = L->list_id;

  if (t == MAXINT) {
    return 0;
  }
  t %= global_dump_mod;
  if (t != global_dump_rem && t != -global_dump_rem) {
    return 0;
  }

  unpack_metafile_pointers (L);

  new_total_entries = 0;

  int sz;

  if (!global_dump_fl) {
    sz = M_tot_entries + L->o_tree->delta;

    writeout_list_id (L->list_id);
    writeout_int (sz);

    in_tree = tree_write_object_id;
    in_array = array_write_object_id;


    listree_get_range ((listree_t *) &OTree, 0, MAXINT);
  } else {
    int sublist = global_dump_fl & 7;

    sz = metafile_get_sublist_size (sublist);

    if (!sz) {
      return 0;
    }

    writeout_list_id (L->list_id);
    writeout_int (sz);

    in_tree = tree_write_object_id_indirect;
    in_array = array_write_object_id_indirect;

    load_o_tree_sub (&OTreeSub, sublist);
    listree_get_range (&OTreeSub, 0, MAXINT);
  }

  assert (sz == new_total_entries);

  return 1;
}
