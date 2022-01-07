
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline size_t predict_malloc_memory (size_t x) {
  if (x == (size_t)0) {
    return x;
  }
  size_t res = x + 3 * sizeof (long) - 1;
  res -= res % (2 * sizeof (long));
  if (res < 4 * sizeof (long)) {
    return 4 * sizeof (long);
  }
  return res;
}
