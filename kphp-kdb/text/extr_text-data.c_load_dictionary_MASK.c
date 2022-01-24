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
struct word_dictionary {int raw_data; long long raw_data_len; int word_num; int max_bits; long long* first_codes; struct file_word_dictionary_entry** words; scalar_t__* code_ptr; } ;
struct file_word_dictionary_entry {int str_len; int code_len; } ;
struct file_word_dictionary {int dict_size; int* offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_FILE_DICTIONARY_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,long long,long long,int /*<<< orphan*/ ) ; 
 struct file_word_dictionary_entry** FUNC2 (int) ; 

struct word_dictionary *FUNC3 (struct word_dictionary *D, long long offset, long long size) {
  int N, i, j, k;
  struct file_word_dictionary *tmp;
  long long x;
  D->raw_data = FUNC1 (0, offset, size, MAX_FILE_DICTIONARY_BYTES);
  FUNC0 (D->raw_data);
  D->raw_data_len = size;
  FUNC0 (size >= 4);
  tmp = (struct file_word_dictionary *) D->raw_data;
  
  N = tmp->dict_size;
  FUNC0 (N >= 0 && N <= (size >> 2) - 2);
  D->word_num = N;

  FUNC0 (tmp->offset[0] >= (N+2)*4 && tmp->offset[0] <= size);
  FUNC0 (tmp->offset[N] <= size);

  D->words = FUNC2 (N*sizeof(void *));

  for (i = 0; i < N; i++) {
    struct file_word_dictionary_entry *E = (struct file_word_dictionary_entry *) (D->raw_data + tmp->offset[i]);
    FUNC0 (tmp->offset[i] < tmp->offset[i+1]);
    FUNC0 (tmp->offset[i+1] <= size);
    FUNC0 (tmp->offset[i] + E->str_len + 2 <= tmp->offset[i+1]);
    FUNC0 (E->code_len <= 32 && E->code_len >= 1);
  }

  D->max_bits = 32;
  
  x = 0;
  k = 0;
  for (j = 1; j <= 32; j++) {
    if (x < (1LL << 32)) {
      D->max_bits = j;
    }
    D->first_codes[j-1] = x;
    D->code_ptr[j-1] = D->words + k - (x >> (32 - j));
    for (i = 0; i < N; i++) {
      struct file_word_dictionary_entry *E = (struct file_word_dictionary_entry *) (D->raw_data + tmp->offset[i]);
      if (E->code_len == j) {
        D->words[k++] = E;
        x += (1U << (32 - j));
        FUNC0 (x <= (1LL << 32));
      }
    }
  }
  FUNC0 (k == N && (x == (1LL << 32) || (!k && !x)));
  return D;
}