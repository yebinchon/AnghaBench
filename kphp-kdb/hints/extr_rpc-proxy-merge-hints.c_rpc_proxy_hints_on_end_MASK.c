#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hints_extra {int limit; scalar_t__ op; scalar_t__ sent_op; } ;
struct gather {int tot_num; struct hints_extra* extra; TYPE_1__* List; } ;
struct TYPE_5__ {int /*<<< orphan*/  rating; int /*<<< orphan*/  object_id; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ gh_entry_t ;
struct TYPE_4__ {scalar_t__ bytes; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GH_total ; 
 int /*<<< orphan*/  TL_VECTOR_TOTAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hints_extra*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gather*) ; 
 scalar_t__ FUNC6 (struct gather*) ; 
 int /*<<< orphan*/  received_bad_answers ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,scalar_t__) ; 

void FUNC12 (struct gather *G) {
  struct hints_extra *extra = G->extra;
  FUNC0 ();
  int i;
  for (i = 0; i < G->tot_num; i++) {
    if (G->List[i].bytes >= 0) {
      int res = FUNC3 (G->List[i].data, G->List[i].bytes);
      if (res < 0) {
        received_bad_answers++;
      }
    } else {
      FUNC11 (4, "Dropping result %d (num = %d)\n", i, G->List[i].bytes);
    }
  }

  if (FUNC6 (G)) {
    FUNC10 (TL_VECTOR_TOTAL);
    FUNC10 (GH_total);
    int *x = FUNC9 (4);

    for (i = 0; i < extra->limit; i++) {
      gh_entry_t *H = FUNC4 ();
      if (H == NULL) {
        break;
      }

      FUNC10 (H->type);
      FUNC10 (H->object_id);
      if (extra->op == extra->sent_op) {
        FUNC7 (H->rating);
      }

      FUNC2 ();
    }

    *x = i;
    FUNC8 ();
  }

  FUNC1 (G->extra);
  FUNC5 (G);
  return;
}