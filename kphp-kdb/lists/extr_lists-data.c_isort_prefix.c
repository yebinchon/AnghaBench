
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_object_id_t ;
typedef int array_object_id_t ;


 int OARR_ENTRY_ADJ (int *,int) ;
 scalar_t__ __have_weights ;
 int memcpy (int ,int ,int ) ;
 int object_id_bytes_adjusted ;
 int object_id_ints_adjusted ;
 scalar_t__ object_id_less_prefix (int ,int ) ;

__attribute__((used)) static void isort_prefix (array_object_id_t *A, int b) {
  int i, j;
  var_object_id_t h, t;
  if (b <= 0) { return; }
  i = 0; j = b;



  h = OARR_ENTRY_ADJ (A, b >> 1);

  do {
    while (object_id_less_prefix (OARR_ENTRY_ADJ (A, i), h)) { i++; }
    while (object_id_less_prefix (h, OARR_ENTRY_ADJ (A, j))) { j--; }
    if (i <= j) {





      if (__have_weights) {
        t = A[2*i]; A[2*i] = A[2*j]; A[2*j] = t;
        t = A[2*i+1]; A[2*i+1] = A[2*j+1]; A[2*j] = t;
      } else {
        t = A[i]; A[i] = A[j]; A[j] = t;
      }

      i++;
      j--;
    }
  } while (i <= j);
  isort_prefix (A, j);



  isort_prefix (A+i, b-i);

}
