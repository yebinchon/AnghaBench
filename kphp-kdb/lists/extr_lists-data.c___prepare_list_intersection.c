
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ N; int * root; } ;
typedef TYPE_1__ listree_t ;
typedef int list_t ;
typedef int list_id_t ;
typedef int array_object_id_t ;


 int * LA ;
 int LE ;
 int MAX_OBJECT_ID ;
 int MAX_OBJECT_RES ;
 int OARR_ENTRY_ADJ (int *,int) ;
 int OBJECT_ID_INTS ;
 int OTree ;
 scalar_t__ PTR_INTS ;
 int R ;
 int R_end ;
 int R_entry_size ;
 int R_mode ;
 unsigned int SUBCATS ;
 scalar_t__ VALUE_INTS ;
 int * __get_list_f (int ,int) ;
 int __have_weights ;
 int assert (int) ;
 int b_out_void ;
 scalar_t__ conv_list_id (int ) ;
 int get_array ;
 int get_data_direct_compatible ;
 int get_data_indirect ;
 int isort (int *,int) ;
 int listree_intersect_range_rec (int ,TYPE_1__*,int ,scalar_t__,int ) ;
 int load_o_tree_sub (TYPE_1__*,int) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ metafile_mode ;
 int object_id_bytes_adjusted ;
 scalar_t__ object_id_compare (int ,int ) ;
 int object_id_ints_adjusted ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int report_x (int ) ;
 int store_object_id_intersect_v ;
 int store_to_rend_overlap ;
 int unpack_metafile_pointers (int *) ;
 int value_offset ;

int __prepare_list_intersection (list_id_t list_id, int mode, array_object_id_t List[], int LL, int flag, int have_weights) {
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }
  list_t *L = __get_list_f (list_id, 2);
  int i, j;

  R_end = R;
  __have_weights = have_weights;
  object_id_ints_adjusted = have_weights + OBJECT_ID_INTS;
  object_id_bytes_adjusted = object_id_ints_adjusted * 4;

  if (mode & 1984) {
    store_object_id_intersect_v = b_out_void;
    if (flag) {
      return -1;
    }
  } else {
    store_object_id_intersect_v = store_to_rend_overlap;
  }
  R_mode = mode;

  value_offset = -1;

  int entry_words = OBJECT_ID_INTS;
  if (mode & 64) { entry_words++; }
  if (mode & 128) { entry_words++; }
  if (mode & 256) { entry_words++; }
  if (mode & 512) {
    value_offset = entry_words;
    entry_words += VALUE_INTS;
  }
  if (mode & 1024) { entry_words += PTR_INTS + 1; }

  R_entry_size = entry_words;

  if ((unsigned) (mode & 63) > SUBCATS || LL < 0 || LL > MAX_OBJECT_RES) {
    return -1;
  }

  if (!LL) {
    return 0;
  }

  if (!L) {
    return conv_list_id (list_id) < 0 ? -1 : 0;
  }

  unpack_metafile_pointers (L);

  listree_t *LT, LI;


  if ((mode & 63) == 0) {
    LT = (listree_t *) &OTree;
    get_array = get_data_direct_compatible;
  } else {
    load_o_tree_sub (LT = &LI, mode & (SUBCATS - 1));
    get_array = get_data_indirect;
  }

  for (i = 1; i < LL; i++) {
    if (object_id_compare (OARR_ENTRY_ADJ (List, i), OARR_ENTRY_ADJ (List, i-1)) <= 0) {
      break;
    }
  }

  if (i < LL) {
    isort (List, LL-1);
  }
  i = j = 1;
  while (i < LL) {
    if (object_id_compare (OARR_ENTRY_ADJ (List, i), OARR_ENTRY_ADJ (List, i-1)) > 0) {



      if (have_weights) {
        List[2*j] = List[2*i];
        List[2*j+1] = List[2*i+1];
      } else {
        List[j] = List[i];
      }

      j++;
    }
    i++;
  }



  List[j*object_id_ints_adjusted] = MAX_OBJECT_ID;

  LA = List;

  listree_intersect_range_rec (*LT->root, LT, 0, LT->N - 1, MAX_OBJECT_ID);

  if (flag) {
    report_x (MAX_OBJECT_ID);
  }

  assert (!((R_end - R) % R_entry_size));

  return (R_end - R) / R_entry_size;
}
