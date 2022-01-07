
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const metafile_len; scalar_t__ metafile; int new_exceptions; } ;
typedef TYPE_1__ user ;


 int assert (int) ;
 int chg_has (int ,int) ;

int user_has_exception (user *u, int val) {
  int i;

  if ( (i = chg_has (u->new_exceptions, val)) ) {
      return i > 0;
  }

  int *a = (int *)u->metafile;
  if (a == ((void*)0)) {
    return 0;
  }

  const int int_size = (int)sizeof (int);
  assert (u->metafile_len >= int_size);
  int n = a[0];

  assert (u->metafile_len >= int_size * (1 + n));
  assert (u->metafile_len <= int_size * (1 + n));
  if (n <= 5) {
    for (i = 1; i <= n; i++) {
      if (a[i] == val) {
        return 1;
      }
    }
    return 0;
  } else {
    int l = 1, r = n + 1, c;
    while (l + 1 < r) {
      c = (l + r) / 2;
      if (a[c] >= val) {
        l = c;
      } else {
        r = c;
      }
    }
    return a[l] == val;
  }
}
