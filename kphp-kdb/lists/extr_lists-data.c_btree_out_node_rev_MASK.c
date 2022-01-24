#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_ext_small_t ;
struct tree_payload {scalar_t__ text; int global_id; int date; int flags; int /*<<< orphan*/  value; } ;
struct TYPE_8__ {scalar_t__ N; } ;

/* Variables and functions */
 struct tree_payload* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_3__ OTree ; 
 int* PTR_INTS ; 
 int* R_end ; 
 int R_mode ; 
 scalar_t__ TF_PLUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ empty_string ; 
 int FUNC4 (scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 
 char* FUNC6 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC7 (int**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9 (tree_ext_small_t *T) {
  int m = R_mode, *p = R_end;
  struct tree_payload *P = FUNC0 (T);
  if (m & 1024) {
    int text_len;

    if (P->text) {
      *((char **)(p - PTR_INTS - 1)) = P->text == empty_string ? 0 : FUNC5 (P->text);
      text_len = FUNC4 (P->text);
    } else {
      FUNC3 (FUNC2 (T) != TF_PLUS);
      *((char **)(p - PTR_INTS - 1)) = FUNC6 (OTree.N - FUNC1 (T), &text_len);
    }

    *--p = text_len; 
    p -= PTR_INTS;
  }
  if (m & 512) {
    FUNC8 (&p, P->value);
  }
  if (m & 256) {
    *--p = P->global_id;
  }
  if (m & 128) {
    *--p = P->date;
  }
  if (m & 64) {
    *--p = P->flags;
  }
  FUNC7 (&p, T->x);
  R_end = p;
  return 0;
}