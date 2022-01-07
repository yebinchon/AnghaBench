
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;
typedef int list_t ;
typedef int list_id_t ;


 int MAXINT ;
 int MAX_RES ;
 int OTree ;
 scalar_t__ R ;
 scalar_t__ R_end ;
 int * __get_list_f (int ,int) ;
 int account_date_buckets ;
 int account_date_step ;
 int account_max_date ;
 int account_min_date ;
 int barray_account_date ;
 int btree_account_date ;
 int carray_account_date ;
 scalar_t__ conv_list_id (int ) ;
 int ctree_account_date ;
 int in_array ;
 int in_tree ;
 int listree_get_range (int *,int ,int ) ;
 int load_o_tree_sub (int *,int) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int unpack_metafile_pointers (int *) ;

int prepare_list_date_distr (list_id_t list_id, int mode, int min_date, int max_date, int step) {
  if (min_date <= 0 || max_date <= min_date || step <= 0 || (unsigned) mode >= 16) {
    return -1;
  }
  int rem = (max_date - min_date) % step;
  int buckets = (max_date - min_date) / step;
  if (rem || buckets > MAX_RES - 2) {
    return -1;
  }
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }

  R_end = R;

  list_t *L = __get_list_f (list_id, 2);

  if (!L) {
    return conv_list_id (list_id) < 0 ? -1 : 0;
  }

  unpack_metafile_pointers (L);

  memset (R, 0, (buckets + 2) * 4);

  listree_t LI, *LT = &LI;

  if (!mode) {
    in_array = barray_account_date;
    in_tree = btree_account_date;
    LT = (listree_t *) &OTree;
  } else {
    in_array = carray_account_date;
    in_tree = ctree_account_date;
    load_o_tree_sub (LT, mode & 7);
  }
  account_min_date = min_date;
  account_max_date = max_date;
  account_date_step = step;
  account_date_buckets = buckets;

  listree_get_range (LT, 0, MAXINT);

  R_end = R + buckets + 2;

  return buckets + 2;
}
