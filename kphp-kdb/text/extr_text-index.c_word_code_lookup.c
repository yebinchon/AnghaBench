
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word_t ;
struct word_dictionary {int max_bits; unsigned int* first_codes; int *** code_ptr; } ;


 int assert (int) ;

__attribute__((used)) static inline word_t *word_code_lookup (struct word_dictionary *D, unsigned code, int *l) {
  int a = -1, b = D->max_bits, c;
  while (b - a > 1) {
    c = ((a + b) >> 1);
    if (D->first_codes[c] <= code) { a = c; } else { b = c; }
  }
  assert (a >= 0);
  *l = a + 1;
  return D->code_ptr[a][code >> (31 - a)];
}
