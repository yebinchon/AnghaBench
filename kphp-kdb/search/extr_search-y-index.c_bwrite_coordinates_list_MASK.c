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
struct TYPE_4__ {int /*<<< orphan*/  m; int /*<<< orphan*/  ptr; } ;
struct list_encoder {TYPE_1__ bw; int /*<<< orphan*/  (* encode_int ) (struct list_encoder*,int) ;} ;
struct bitwriter {int /*<<< orphan*/  m; int /*<<< orphan*/  ptr; int /*<<< orphan*/  end_ptr; int /*<<< orphan*/  start_ptr; } ;
struct TYPE_5__ {size_t doc_id; int position; } ;
typedef  TYPE_2__ pair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitwriter*,int) ; 
 scalar_t__ FUNC2 (struct bitwriter*) ; 
 int /*<<< orphan*/  coordinate_bits ; 
 int* item_positions ; 
 int /*<<< orphan*/  le_golomb ; 
 int /*<<< orphan*/  FUNC3 (struct list_encoder*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct list_encoder*,int) ; 
 size_t tot_items ; 

__attribute__((used)) static void FUNC5 (struct bitwriter *bw, pair_t *P, int len) {
  int i;
  FUNC0 (P->doc_id >= 0 && P->doc_id < tot_items);
  coordinate_bits -= FUNC2 (bw);
  FUNC1 (bw, len);
  struct list_encoder enc;
  const int N = item_positions[P->doc_id];
  FUNC0 (len > 0 && len <= N);
  FUNC3 (&enc, item_positions[P->doc_id], len, bw->start_ptr, bw->end_ptr, le_golomb, FUNC2 (bw));
  //fprintf (stderr, "[ ");
  for (i = 0; i < len; i++) {
    //fprintf (stderr, "%d ", P[i].position);
    FUNC0 (P[i].position >= 1 && P[i].position <= N);
    FUNC0 (!i || P[i-1].position < P[i].position);
    enc.encode_int (&enc, P[i].position - 1);
  }
  //fprintf (stderr, "] \n");
  //memcpy (bw, &enc.bw, sizeof (struct bitwriter));
  bw->ptr = enc.bw.ptr;
  bw->m = enc.bw.m;
  coordinate_bits += FUNC2 (bw);
}