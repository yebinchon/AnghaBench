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
struct list_encoder {int N; int K; int tp; int /*<<< orphan*/ * encode_int; scalar_t__ k; int /*<<< orphan*/  bw; } ;
typedef  enum list_coding_type { ____Placeholder_list_coding_type } list_coding_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  degenerate_encode_int ; 
 int /*<<< orphan*/  FUNC2 (struct list_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_encoder*) ; 
 int le_degenerate ; 
#define  le_golomb 130 
#define  le_interpolative 129 
#define  le_llrun 128 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct list_encoder*) ; 

void FUNC6 (struct list_encoder *enc, int N, int K, unsigned char *ptr, unsigned char *end_ptr, enum list_coding_type tp, int prefix_bit_offset) {
  FUNC1 (&enc->bw, ptr, end_ptr, prefix_bit_offset);
  enc->N = N;
  enc->K = K;
  if (N == K) {
    enc->tp = le_degenerate;
    enc->k = 0;
    enc->encode_int = &degenerate_encode_int;
    return;
  }
  enc->tp = tp;
  switch (tp) {
  case le_golomb:
    FUNC2 (enc);
    return;
  case le_interpolative:
    FUNC3 (enc);
    return;
  case le_llrun:
    if (FUNC4 (N, K)) {
      enc->tp = le_golomb;
      FUNC2 (enc);
    } else {
      FUNC5 (enc);
    }
    return;
  default:
    FUNC0 (0);
  }
}