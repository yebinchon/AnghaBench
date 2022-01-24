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
struct list_decoder {int M; int p; int k; int last; int /*<<< orphan*/ * decode_int; int /*<<< orphan*/  K; int /*<<< orphan*/  N; } ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  golomb_decode_int_big_k ; 
 int /*<<< orphan*/  golomb_decode_int_small_k ; 

__attribute__((used)) static void FUNC2 (struct list_decoder *dec) {
  const int M = FUNC1 (dec->N, dec->K);
  dec->M = M;
  dec->p = (1 << (dec->k = FUNC0 (M) + 1)) - M;
  dec->last = -1;
  dec->decode_int = dec->k > 1 ? &golomb_decode_int_big_k : &golomb_decode_int_small_k;
}