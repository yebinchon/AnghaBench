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
typedef  scalar_t__ global_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  OTree ; 
 int* R_end ; 
 int R_mode ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5 (object_id_t object_id, global_id_t global_id) {
  int m = R_mode;
  if (m & 0x6c0) {
    int temp_id = -1;
    tree_ext_large_t *T = FUNC3 (&OTree, object_id, &temp_id);
    if (T != (void *) -1) {
      return FUNC2 (FUNC0(T));
    } else {
      return FUNC1 (0, temp_id);
    }
  } else {
    int *p = R_end;
    FUNC4 (&p, object_id);
    if (m & 256) {
      *p++ = (int)global_id;
    }
    R_end = p;
  }
  return 0;
}