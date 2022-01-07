
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_index_word {int len; int len_subseq; scalar_t__ bytes_subseq; scalar_t__ bytes; } ;
typedef int pair_t ;


 int assert (int) ;
 scalar_t__ in_title (int *) ;
 scalar_t__ search_encode_core (int *,int,int,struct search_index_word*,int,int const,int) ;

__attribute__((used)) static int search_encode_list (pair_t *P, int len, struct search_index_word *W, const int compression_methods[2], int quiet) {
  W->len = len;


  W->bytes = W->bytes_subseq = 0;
  assert (len > 0);

  int len_sub = 0;
  while (len > 0) {
    len--;
    if (in_title (P)) {
      len_sub++;
    }
    P++;
  }

  len = W->len;
  P-=len;
  W->len_subseq = len_sub;
  int res = 0;
  res += search_encode_core (P, len, len, W, 0, compression_methods[0], quiet);
  res += search_encode_core (P, len, len_sub, W, 1, compression_methods[1], quiet);
  return res;
}
