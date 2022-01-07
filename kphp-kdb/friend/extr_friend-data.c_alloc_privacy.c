
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int* List; } ;
typedef TYPE_1__ privacy_t ;


 int* P ;
 size_t PL ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int lrand48 () ;
 int memcpy (int*,int*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int privacy_nodes ;
 int stderr ;
 size_t tot_privacy_len ;
 int verbosity ;
 TYPE_1__* zmalloc (int) ;

privacy_t *alloc_privacy (void) {
  int len = PL, *A, sz;
  assert (P[PL] == -1);
  if (len >= 255) {
    len++;
  }

  sz = sizeof(privacy_t) + len*4 + 4;
  tot_privacy_len += PL;
  privacy_nodes++;

  privacy_t *T = zmalloc (sz);
  memset (T, 0, sizeof(privacy_t));
  T->y = (lrand48() << 8) + (len >= 255 ? 255 : len);
  A = T->List;
  if (len >= 255) {
    *A++ = PL;
  }

  memcpy (A, P, (PL+1)*4);

  if (verbosity > 2) {
    fprintf (stderr, "in-core privacy: ");
    for (sz = 0; sz <= PL; sz++) {
      fprintf (stderr, " %08x", A[sz]);
    }
    fprintf (stderr, "\n");
  }

  return T;
}
