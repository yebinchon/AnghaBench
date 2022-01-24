#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void tree_ext_large_t ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  OTree ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int metafile_mode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7 (list_id_t list_id, object_id_t object_id) {
  list_t *L = FUNC0 (list_id, -1);
  if (metafile_mode & 1) {
    if (!L) {
      return 1;
    }
    FUNC6 (L);
    int temp_id;
    tree_ext_large_t *T = FUNC4 (&OTree, object_id, &temp_id);
    if ((T && (T != (void *)-1)) || ((T == (void *)-1) && FUNC3 (list_id) >= 0)) {
      return 1;
    } else {
      return 0;
    }
  }
  if (metafile_mode) {
    if (!L) {
      return 1;
    }
    //int metafile_number = find_metafile (list_id);
    //int metafile_number = get_list_m (list_id)->metafile_number;
    int metafile_number = FUNC3 (list_id);
    if (metafile_number < 0) {
      return 1;
    }    
    if (!FUNC1 (metafile_number, -1)) {  // ??? NOT SURE about this -1, was 0 before
      return 1;
    }
    FUNC5 (L);
  }
  return FUNC2 (list_id, object_id);
}