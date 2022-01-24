#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item_t ;
struct TYPE_15__ {TYPE_1__* dec; } ;
struct TYPE_17__ {int /*<<< orphan*/  field; scalar_t__ doc_id; TYPE_2__ dec; } ;
struct TYPE_16__ {int tag_word; int optional_tag_weight; int* Bt; int sp; int /*<<< orphan*/  cur0; TYPE_6__** TS; TYPE_5__ Decoder; int /*<<< orphan*/  cur_y1; int /*<<< orphan*/ * cur1; int /*<<< orphan*/ * ihe_skip_advance1; int /*<<< orphan*/  word; } ;
typedef  TYPE_3__ iheap_en_t ;
typedef  int /*<<< orphan*/  hash_t ;
struct TYPE_18__ {int /*<<< orphan*/  item; } ;
struct TYPE_14__ {scalar_t__ tp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IndexItems ; 
 TYPE_6__* Root ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ihe_skip_advance1_fast ; 
 int /*<<< orphan*/  ihe_skip_advance1_slow ; 
 scalar_t__ FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ le_interpolative_ext ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8 (iheap_en_t *A, hash_t word, int tag, int optional_tag_weight) {
  int sgn, sp;
  FUNC7 (A, 0, sizeof (*A));
  A->tag_word = tag;
  A->optional_tag_weight = optional_tag_weight;
  //commented useless code: after memset
  //A->sp = 0;
  //A->cur = A->cur0 = A->cur1 = 0;

  //  fprintf (stderr, "ihe_init(%p, %016llx)\n", A, word);
  A->word = word;
  A->TS[0] = Root;
  A->Bt[0] = -1;

  A->ihe_skip_advance1 = &ihe_skip_advance1_slow;
  if (FUNC6 (&A->Decoder, word)) {
    if (A->Decoder.dec.dec->tp == le_interpolative_ext) {
      A->ihe_skip_advance1 = &ihe_skip_advance1_fast;
    }
    if (FUNC1 (&A->Decoder) >= 0) {
      A->cur1 = (item_t *) (IndexItems + A->Decoder.doc_id);
      A->cur_y1 = A->Decoder.field;
      // fprintf (stderr, "%d items in index, first=%lld\n", A->Decoder.len, A->cur1->item_id);
    }
  }

  if (!Root) {
    sgn = 1;
  } else {
    sgn = FUNC3 (A);
    sp = A->sp;

    if (sgn < 0 && A->Bt[sp] >= 0) {
      sp = A->Bt[sp];
      sgn = FUNC5 (A->TS[sp], A);
    }
  }

  if (sgn != 0) {
    A->sp = -1;
    A->cur0 = 0;
    return FUNC4 (A);
  }

  A->sp = sp;
  A->cur0 = A->TS[sp]->item;
  //  A->cur_y = A->TS[sp]->y;

  if (FUNC0(A->cur0)) {
    FUNC2 (A);
  }

  return FUNC4 (A);
}