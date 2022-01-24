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
struct list_encoder {int k; int K; int* L; int /*<<< orphan*/  bw; int /*<<< orphan*/  N; } ;
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int /*<<< orphan*/  HUFFMAN_MAX_CODE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int* FUNC8 (int*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct list_encoder*,int,int) ; 
 scalar_t__ FUNC11 (int*,int) ; 
 int FUNC12 (int) ; 
 int* FUNC13 (int) ; 

__attribute__((used)) static void FUNC14 (struct list_encoder *enc) {
  dyn_mark_t mrk;
  FUNC5 (mrk);
  FUNC0 (enc->k == enc->K);
  int max_gap = FUNC9 (enc->N, enc->K);
  int nbuckets = FUNC12 (max_gap);
  int *freq = FUNC13 (nbuckets * sizeof (int));
  int last = -1, i;
  for (i = 0; i < enc->K; i++) {
    int d = enc->L[i] - last;
    FUNC0 (d > 0 && d <= max_gap);
    freq[FUNC1 (d)]++;
    last = enc->L[i];
  }
  int alphabet_size, *l = FUNC8 (freq, nbuckets, HUFFMAN_MAX_CODE_LENGTH, &alphabet_size);
  FUNC0 (FUNC11 (l, nbuckets) == 0);
  FUNC2 (&enc->bw, l, nbuckets);
  const int single_symbol_in_alphabet = alphabet_size < 2;
  int firstcode[HUFFMAN_MAX_CODE_LENGTH+1], codeword[32], symbols[32 * (HUFFMAN_MAX_CODE_LENGTH + 1)];
  FUNC4 (l, nbuckets, HUFFMAN_MAX_CODE_LENGTH, firstcode, codeword, symbols);
  last = -1;
  for (i = 0; i < enc->K; i++) {
    int d = enc->L[i] - last;
    FUNC0 (d > 0 && d <= max_gap);
    int o = FUNC1 (d);
    FUNC0 (o >= 0 && o < nbuckets);
    if (!single_symbol_in_alphabet) {
      FUNC10 (enc, codeword[o], l[o]);
    }
    FUNC3 (&enc->bw, d ^ (1 << o), o);
    last = enc->L[i];
  }

  FUNC7 (enc->L);
  FUNC6 (mrk);
}