
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int array_object_id_t ;


 int assert (int) ;
 int memcpy (int *,int *,int) ;
 int my_rand (int) ;

__attribute__((used)) static int randomize_result (array_object_id_t *A, int N, int M, int result_entry_ints) {
  int i, j = 0;
  for (i = 0; i < N; i++) {
    if (my_rand(N-i) < M) {
      memcpy (A + j*result_entry_ints, A + i*result_entry_ints, result_entry_ints * 4);
      j++;
      if (!--M) {
        return j;
      }
    }
  }
  assert (!M);
  return j;
}
