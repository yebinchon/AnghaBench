
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long CLUSTER_MASK ;
 long long ID_MASK ;
 int id_tree ;
 scalar_t__ lrand48 () ;
 scalar_t__ tree_lookup (int ,long long) ;

long long generate_id (long long x) {
  while (1) {
    int ok = ((x & ID_MASK) != 0);
    if (ok && tree_lookup (id_tree, x)) {
      ok = 0;
    }
    if (ok) {
      return x;
    }
    x = (x & CLUSTER_MASK) | (unsigned) lrand48();
  }
  return 0;
}
