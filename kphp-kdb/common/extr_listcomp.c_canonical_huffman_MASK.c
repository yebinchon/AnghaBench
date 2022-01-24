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

/* Variables and functions */
 int HUFFMAN_MAX_CODE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (int *l, int N, int L, int* firstcode, int *codeword, int *symbols) {
  int i;
  int numl[HUFFMAN_MAX_CODE_LENGTH+1], nextcode[HUFFMAN_MAX_CODE_LENGTH+1];
  FUNC1 (&numl[1], 0, L * sizeof(int));
  for (i = 0; i < N; i++) {
    numl[l[i]]++;
  }
  firstcode[L] = 0;
  for (i = L - 1; i >= 1; i--) {
    firstcode[i] = (firstcode[i+1] + numl[i+1]) >> 1;
  }
  FUNC0 (&nextcode[1], &firstcode[1], L * sizeof (int));
  /* codeword array only needed for encoding */
  if (FUNC2 (codeword != NULL)) {
    for (i = 0; i < N; i++) {
      int li = l[i];
      if (!li) {
        continue;
      }
      codeword[i] = nextcode[li];
      symbols[(HUFFMAN_MAX_CODE_LENGTH+1) * ((nextcode[li]++) - firstcode[li]) + li] = i;
    }
  } else {
    for (i = 0; i < N; i++) {
      int li = l[i];
      if (!li) {
        continue;
      }
      symbols[(HUFFMAN_MAX_CODE_LENGTH+1) * ((nextcode[li]++) - firstcode[li]) + li] = i;
    }
  }
}