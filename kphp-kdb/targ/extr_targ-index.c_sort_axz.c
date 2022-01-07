
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_user_view_triple {int ad_id; int uid; } ;



__attribute__((used)) static void sort_axz (struct ad_user_view_triple *A, long b) {
  long i, j;
  int ha, hu;
  struct ad_user_view_triple t;
  if (b <= 0) {
    return;
  }
  i = 0;
  j = b;
  ha = A[b >> 1].ad_id;
  hu = A[b >> 1].uid;
  do {
    while (A[i].ad_id < ha || (A[i].ad_id == ha && A[i].uid < hu)) {
      i++;
    }
    while (A[j].ad_id > ha || (A[j].ad_id == ha && A[j].uid > hu)) {
      j--;
    }
    if (i <= j) {
      t = A[i];
      A[i++] = A[j];
      A[j--] = t;
    }
  } while (i <= j);
  sort_axz (A, j);
  sort_axz (A + i, b - i);
}
