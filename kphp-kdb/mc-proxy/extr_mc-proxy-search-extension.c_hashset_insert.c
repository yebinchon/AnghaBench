
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long* H ;
 unsigned int HSIZE ;

__attribute__((used)) static int hashset_insert (long long id) {

  if (!id) { return 1; }
  int h1, h2;
  long long D;
  h1 = ((unsigned int) id) % HSIZE;
  h2 = 1 + ((unsigned int) (id >> 32)) % (HSIZE - 1);
  while ((D = H[h1]) != 0) {
    if (D == id) {
      return 0;
    }
    h1 += h2;
    if (h1 >= HSIZE) { h1 -= HSIZE; }
  }
  H[h1] = id;
  return 1;
}
