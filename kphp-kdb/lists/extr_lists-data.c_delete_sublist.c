
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lev_generic {int a; } ;
struct lev_del_entry {int type; } ;
typedef int object_id_t ;
struct TYPE_8__ {TYPE_1__* o_tree; } ;
typedef TYPE_2__ list_t ;
typedef int list_id_t ;
struct TYPE_9__ {scalar_t__ N; int root; } ;
struct TYPE_7__ {int delta; } ;


 int FIRST_INT (int ) ;
 int LEV_LI_DEL_ENTRY ;
 int MAXINT ;
 int M_tot_entries ;
 TYPE_4__ OTree ;
 int array_delete_sublist ;
 int assert (int) ;
 int check_metafile_loaded (int,int) ;
 scalar_t__ conv_list_id (int ) ;
 scalar_t__ delete_entry (int ,int ,int ,struct lev_generic*) ;
 int delete_list (int ,int ) ;
 int f_and_c ;
 int f_cnt ;
 int f_xor_c ;
 TYPE_2__* get_list_m (int ) ;
 int get_list_metafile (int ) ;
 int in_array ;
 int in_tree ;
 scalar_t__ lev_list_object_bytes ;
 int listree_delete_some_range_rec_large (int ,TYPE_4__*,int ,scalar_t__,int ) ;
 int mark_list_metafile (int ) ;
 scalar_t__ metafile_get_sublist_size (int) ;
 int metafile_mode ;
 int postpone (int,struct lev_generic*) ;
 int postponed_replay ;
 int * temp_object_buff ;
 int temp_object_buff_size ;
 int * temp_object_list ;
 int temp_object_list_size ;
 int tree_delete_sublist ;
 int unpack_metafile_pointers (TYPE_2__*) ;
 int upcopy_list_object_id (struct lev_del_entry*,int ,int ) ;
 int vkprintf (int,char*) ;
 int zfree (struct lev_del_entry*,scalar_t__) ;
 struct lev_del_entry* zmalloc (scalar_t__) ;
 int zzfree (int *,long long) ;
 int * zzmalloc (long long) ;

__attribute__((used)) static int delete_sublist (list_id_t list_id, int op, struct lev_generic *E) {
  vkprintf (4, "delete_sublist\n");
  if (metafile_mode) {


    int metafile_number = get_list_metafile (list_id);
    if (metafile_number >= 0) {
      if (!check_metafile_loaded (metafile_number, -1)) {
        postpone (metafile_number, (struct lev_generic *)E);
        return 1;
      } else if (metafile_mode & 2) {
        postpone (metafile_number, (struct lev_generic *)E);
      } else {
        if (!(metafile_mode & 1)) {
          mark_list_metafile (list_id);
        }
      }
    }
  }

  list_t *L = get_list_m (list_id);
  int i, s = 0, xor_c = op & 0xff, and_c = (op >> 8) & 0xff;

  if (!L) {
    return conv_list_id (list_id) < 0 ? -1 : 0;
  }

  unpack_metafile_pointers (L);

  for (i = 0; i < 8; i++) {
    if (!((i ^ xor_c) & 7 & and_c)) {
      s += metafile_get_sublist_size (i);
    }
  }

  if (!s) {
    return 0;
  }

  f_xor_c = xor_c;
  f_and_c = and_c;
  f_cnt = 0;

  in_array = array_delete_sublist;
  in_tree = tree_delete_sublist;

  long long msize = 0;
  if (metafile_mode & 1) {
    temp_object_list_size = 0;
    if (M_tot_entries + L->o_tree->delta <= temp_object_buff_size) {
      temp_object_list = temp_object_buff;
    } else {
      msize = sizeof (object_id_t) * (M_tot_entries + L->o_tree->delta);
      temp_object_list = zzmalloc (msize);
    }
  }
  assert (!listree_delete_some_range_rec_large (OTree.root, &OTree, 0, OTree.N - 1, MAXINT));
  if (metafile_mode & 1) {
    struct lev_del_entry *E = zmalloc (sizeof (struct lev_del_entry) + lev_list_object_bytes);
    E->type = LEV_LI_DEL_ENTRY;
    int t = postponed_replay;
    postponed_replay = 1;
    for (i = 0; i < temp_object_list_size; i++) {
      ((struct lev_generic *)E)->a = FIRST_INT(list_id);
      upcopy_list_object_id (E, list_id, temp_object_list[i]);
      assert (delete_entry (list_id, temp_object_list[i], 0, (struct lev_generic *)E) >= 0);
    }
    postponed_replay = t;
    zfree (E, sizeof (struct lev_del_entry) + lev_list_object_bytes);
    if (temp_object_list != temp_object_buff) {
      zzfree (temp_object_list, msize);
    }
  }

  if (M_tot_entries + L->o_tree->delta == 0 && !(metafile_mode & 2)) {
    assert (delete_list (list_id, 0));
  }

  return f_cnt;
}
