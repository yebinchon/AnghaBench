
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int exit (int) ;

__attribute__((used)) static int binary_search_ranges (const int *ranges, int r, int code) {
  if ((unsigned int)code > 0x10ffff) {
    return 0;
  }

  int l = 0;
  while (l < r) {
    int m = ((l + r + 2) >> 2) << 1;
    if (ranges[m] <= code) {
      l = m;
    } else {
      r = m - 2;
    }
  }

  int t = ranges[l + 1];
  if (t < 0) {
    return code - ranges[l] + (~t);
  }
  if (t <= 0x10ffff) {
    return t;
  }
  switch (t - 0x200000) {
    case 0:
      return (code & -2);
    case 1:
      return (code | 1);
    case 2:
      return ((code - 1) | 1);
    default:
      assert (0);
      exit (1);
  }
}
