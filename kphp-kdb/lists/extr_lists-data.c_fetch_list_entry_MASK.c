#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void tree_ext_large_t ;
struct tree_payload {int flags; int date; scalar_t__ text; scalar_t__ value; scalar_t__ global_id; } ;
typedef  int /*<<< orphan*/  object_id_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_id_t ;
struct TYPE_3__ {int N; } ;

/* Variables and functions */
 scalar_t__* M_global_id_list ; 
 int FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 TYPE_1__ OTree ; 
 struct tree_payload* FUNC2 (void*) ; 
 scalar_t__ TF_PLUS ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 char* FUNC6 (scalar_t__) ; 
 void* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 char* FUNC11 (int,int*) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ metafile_mode ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15 (list_id_t list_id, object_id_t object_id, int result[13]) {
  if (metafile_mode && FUNC13 (list_id, 1) < 0) {
    return -2;
  }
  list_t *L = FUNC3 (list_id, 2);
  if (!L) {
    return -1;
  }

  FUNC14 (L);

  int temp_id;
  tree_ext_large_t *T = FUNC7 (&OTree, object_id, &temp_id);

  if (!T) {
    return -1;
  }

  FUNC8 (result + 6, 0, 28);

  if (T != (void *) -1) {
    struct tree_payload *P = FUNC2 (T);
    result[0] = P->flags;
    result[1] = P->date;
    *((long long *) (result + 2)) = (long long) P->global_id;
    *((long long *) (result + 4)) = (long long) P->value;

    if (P->text) {
      result[12] = FUNC5 (P->text);
      *((char **) (result + 10)) = FUNC6 (P->text);
    } else {
      FUNC4 (FUNC1 (T) != TF_PLUS);
      *((char **) (result + 10)) = FUNC11 (OTree.N - FUNC0 (T), result + 12);
    }
  } else {
    result[0] = FUNC10 (temp_id);
    result[1] = FUNC9 (temp_id);
    *((long long *) (result + 2)) = (long long) M_global_id_list[temp_id];
    *((long long *) (result + 4)) = (long long) FUNC12 (temp_id);
    *((char **) (result + 10)) = FUNC11 (temp_id, result + 12);
  }
  return 6;
}