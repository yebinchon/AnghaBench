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
struct list_decoder {int N; int K; int tp; int /*<<< orphan*/ * decode_int; int /*<<< orphan*/  k; int /*<<< orphan*/  br; } ;
typedef  enum list_coding_type { ____Placeholder_list_coding_type } list_coding_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  degenerate_decode_int ; 
 int /*<<< orphan*/  FUNC2 (struct list_decoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_decoder*) ; 
#define  le_degenerate 133 
#define  le_golomb 132 
#define  le_interpolative 131 
#define  le_interpolative_ext 130 
#define  le_llrun 129 
#define  le_raw_int32 128 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct list_decoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_decoder*) ; 

__attribute__((used)) static void FUNC7 (struct list_decoder *dec, int N, int K, const unsigned char *start_ptr, enum list_coding_type tp, int prefix_bit_offset) {
  FUNC1 (&dec->br, start_ptr, prefix_bit_offset);
  dec->N = N;
  dec->K = K;
  dec->tp = tp;
  switch (tp) {
  case le_golomb:
    FUNC2 (dec);
    break;
  case le_interpolative:
    FUNC3 (dec);
    break;
  case le_interpolative_ext:
    FUNC0 (0);
    break;
  case le_llrun:
    if (FUNC4 (N, K)) {
      dec->tp = le_golomb;
      FUNC2 (dec);
    } else {
      FUNC5 (dec);
    }
    break;
  case le_degenerate:
    dec->k = 0;
    dec->decode_int = &degenerate_decode_int;
    break;
  case le_raw_int32:
    FUNC6 (dec);
    break;
  default:
    FUNC0 (0);
  }
}