#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ tree_ext_small_t ;
struct TYPE_15__ {int /*<<< orphan*/  rpos; } ;
typedef  TYPE_2__ tree_ext_large_t ;
struct tree_payload {int /*<<< orphan*/  text; } ;
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_16__ {scalar_t__ N; TYPE_2__** root; } ;
typedef  TYPE_3__ listree_direct_t ;

/* Variables and functions */
 scalar_t__ DeletedSubnode ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int FUNC2 (TYPE_2__*) ; 
 struct tree_payload* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  TF_MINUS ; 
#define  TF_PLUS 129 
#define  TF_ZERO 128 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  empty_string ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18 (listree_direct_t *LD, object_id_t x) {
  tree_ext_large_t **R = LD->root;
  int rpos;
  tree_ext_large_t *T = FUNC0 (FUNC16 (FUNC4 (*R), x));

  if (FUNC4(T) == NIL) {
    rpos = FUNC6 (LD, x);
    FUNC5 (rpos > 0 && FUNC12 (FUNC8 (LD, LD->N - rpos), x));
    tree_ext_small_t *node = FUNC4 (FUNC11 (x, FUNC10 (), FUNC1 (rpos, TF_MINUS)));
    *R = FUNC0 (FUNC15 (FUNC4 (*R), node->x, node->y, node));
  } else {
    struct tree_payload *P;
    switch (FUNC2(T)) {
//    case TF_REPLACED:
    case TF_ZERO:
      P = FUNC3 (T);
      if (P->text) {
        if (P->text != empty_string) {
          FUNC17 (P->text, FUNC9 (P->text));
        }
        P->text = 0;
      }
      T->rpos |= TF_MINUS;	// execute recursive relax
      FUNC5 (FUNC13 (FUNC4 (*R), x, -1) == FUNC4(T));
      break;
    case TF_PLUS:
      DeletedSubnode = 0;
      *R = FUNC0 (FUNC14 (FUNC4 (*R), x));
      FUNC5 (DeletedSubnode == FUNC4(T));
      FUNC7 (T);
      break;
    default:
      FUNC5 (0);
    }
  }
}