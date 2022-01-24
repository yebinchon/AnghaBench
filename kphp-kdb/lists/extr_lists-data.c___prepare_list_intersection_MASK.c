#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ N; int /*<<< orphan*/ * root; } ;
typedef  TYPE_1__ listree_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_id_t ;
typedef  int /*<<< orphan*/  array_object_id_t ;

/* Variables and functions */
 int /*<<< orphan*/ * LA ; 
 int /*<<< orphan*/  LE ; 
 int /*<<< orphan*/  MAX_OBJECT_ID ; 
 int MAX_OBJECT_RES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int OBJECT_ID_INTS ; 
 int /*<<< orphan*/  OTree ; 
 scalar_t__ PTR_INTS ; 
 int R ; 
 int R_end ; 
 int R_entry_size ; 
 int R_mode ; 
 unsigned int SUBCATS ; 
 scalar_t__ VALUE_INTS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int __have_weights ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  b_out_void ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_array ; 
 int /*<<< orphan*/  get_data_direct_compatible ; 
 int /*<<< orphan*/  get_data_indirect ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ metafile_mode ; 
 int object_id_bytes_adjusted ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int object_id_ints_adjusted ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  store_object_id_intersect_v ; 
 int /*<<< orphan*/  store_to_rend_overlap ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int value_offset ; 

int FUNC12 (list_id_t list_id, int mode, array_object_id_t List[], int LL, int flag, int have_weights) {
  if (metafile_mode && FUNC9 (list_id, 1) < 0) {
    return -2;
  }
  list_t *L = FUNC1 (list_id, 2);
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
    return FUNC3 (list_id) < 0 ? -1 : 0;
  }

  FUNC11 (L);
  
  listree_t *LT, LI;

  //in_tree = list_tree_intersect;
  if ((mode & 63) == 0) {
    LT = (listree_t *) &OTree;
    get_array = get_data_direct_compatible;
  } else {
    FUNC6 (LT = &LI, mode & (SUBCATS - 1));
    get_array = get_data_indirect;
  }

  for (i = 1; i < LL; i++) {
    if (FUNC8 (FUNC0 (List, i), FUNC0 (List, i-1)) <= 0) {
      break;
    }
  }

  if (i < LL) {
    FUNC4 (List, LL-1);
  }
    
  /*i = j = 0;
  while (i < LL && List[i] <= 0) {
    i++;
  }
  if (i == LL) {
    return 0;
  }


  List[j++] = List[i++];*/
  i = j = 1;
  while (i < LL) {
    if (FUNC8 (FUNC0 (List, i), FUNC0 (List, i-1)) > 0) {
      #ifdef LISTS_Z
      memcpy (OARR_ENTRY_ADJ (List, j), OARR_ENTRY_ADJ (List, i), object_id_bytes_adjusted);
      #else
      if (have_weights) {
        List[2*j] = List[2*i];
        List[2*j+1] = List[2*i+1];
      } else {
        List[j] = List[i];
      }
      #endif
      j++;
    }
    i++;
  }
  #ifdef LISTS_Z
  LE = OARR_ENTRY_ADJ (List, j);
  #else
  List[j*object_id_ints_adjusted] = MAX_OBJECT_ID; 
  #endif
  LA = List;
  
  FUNC5 (*LT->root, LT, 0, LT->N - 1, MAX_OBJECT_ID);

  if (flag) {
    FUNC10 (MAX_OBJECT_ID);
  }

  FUNC2 (!((R_end - R) % R_entry_size));

  return (R_end - R) / R_entry_size;
}