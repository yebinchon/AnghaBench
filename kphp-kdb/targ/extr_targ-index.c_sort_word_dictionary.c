
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_index_word_directory_entry {scalar_t__ word; } ;
typedef scalar_t__ hash_t ;



__attribute__((used)) static void sort_word_dictionary (struct targ_index_word_directory_entry *A, int b) {
  int i, j;
  hash_t h;
  struct targ_index_word_directory_entry t;
  if (b <= 0) {
    return;
  }
  i = 0;
  j = b;
  h = A[b >> 1].word;
  do {
    while (A[i].word < h) { i++; }
    while (A[j].word > h) { j--; }
    if (i <= j) {
      t = A[i];
      A[i++] = A[j];
      A[j--] = t;
    }
  } while (i <= j);
  sort_word_dictionary (A, j);
  sort_word_dictionary (A + i, b - i);
}
