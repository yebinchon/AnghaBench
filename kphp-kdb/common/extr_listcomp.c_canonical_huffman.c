
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HUFFMAN_MAX_CODE_LENGTH ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ unlikely (int ) ;

void canonical_huffman (int *l, int N, int L, int* firstcode, int *codeword, int *symbols) {
  int i;
  int numl[HUFFMAN_MAX_CODE_LENGTH+1], nextcode[HUFFMAN_MAX_CODE_LENGTH+1];
  memset (&numl[1], 0, L * sizeof(int));
  for (i = 0; i < N; i++) {
    numl[l[i]]++;
  }
  firstcode[L] = 0;
  for (i = L - 1; i >= 1; i--) {
    firstcode[i] = (firstcode[i+1] + numl[i+1]) >> 1;
  }
  memcpy (&nextcode[1], &firstcode[1], L * sizeof (int));

  if (unlikely (codeword != ((void*)0))) {
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
