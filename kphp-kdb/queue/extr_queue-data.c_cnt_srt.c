
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int was ;
struct TYPE_4__ {int x; } ;
typedef TYPE_1__ pli ;


 int assert (int) ;
 int dl_abs (int ) ;
 int engine_n ;
 int memset (int*,int ,int) ;

void cnt_srt (pli *a, int n, pli *b) {
  static int was[10001] = {0},
             num[10001] = {0},
             st[10001] = {0},
             vn = 0, id = 0;

  assert (0 < engine_n && engine_n <= 10000);

  if (++id == 0) {
    memset (was, 0, sizeof (was));
    id = 1;
  }

  int i;
  vn = 0;
  st[0] = 0;
  for (i = 0; i < n; i++) {
    int x = dl_abs (a[i].x) % engine_n;
    if (was[x] != id) {
      num[x] = vn;
      was[x] = id;
      vn++;
      st[vn] = 0;
    }

    st[num[x] + 1]++;
  }
  for (i = 0; i < vn; i++) {
    st[i + 1] += st[i];
  }
  for (i = 0; i < n; i++) {
    b[st[num[dl_abs (a[i].x) % engine_n]]++] = a[i];
  }
}
