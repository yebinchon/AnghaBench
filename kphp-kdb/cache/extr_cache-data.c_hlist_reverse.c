
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {struct cache_uri* hnext; } ;



__attribute__((used)) static struct cache_uri *hlist_reverse (struct cache_uri *L) {
  struct cache_uri *U, *V, *A = ((void*)0);
  for (U = L; U != ((void*)0); U = V) {
    V = U->hnext;
    U->hnext = A;
    A = U;
  }
  return A;
}
