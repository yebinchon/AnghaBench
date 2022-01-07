
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GT ;
 int Gc ;
 int* I ;
 int* L ;
 int MAX_GID ;
 int MAX_GROUPS ;
 int * S ;
 int adj_rec ;
 int assert (int) ;
 int memcpy (scalar_t__,int ,int) ;

void process_names_row (void) {
  int x = I[0], len = L[1];

  if (x <= 0 || x >= MAX_GID) {
    return;
  }

  assert (Gc < MAX_GROUPS - len - 16);

  ((int *) GT)[x] = Gc;
  *((int *) (GT + Gc)) = len;
  Gc += 4;
  memcpy (GT + Gc, S[1], len+1);
  Gc = (Gc + len + 4) & -4;

  assert (Gc <= MAX_GROUPS);

  adj_rec++;

}
