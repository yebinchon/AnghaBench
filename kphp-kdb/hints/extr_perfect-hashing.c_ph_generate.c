
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; int* sums; int mul0; int mul1; int * used; int * code; } ;
typedef TYPE_1__ perfect_hash ;


 int R (int,int) ;
 int assert (int) ;
 int dfs (int,int,int ) ;
 int* di ;
 int dl_free (int*,int) ;
 int* dl_malloc (int) ;
 void* dl_malloc0 (int ) ;
 scalar_t__ get_bit (int *,int) ;
 int get_code_len (int) ;
 int get_sums_len (int) ;
 int get_used_len (int) ;
 int memset (int*,int,int) ;
 int* ne ;
 int poly_h (long long,int,int) ;
 int set_bit (int *,int) ;
 int* st ;
 int* va ;
 int* was ;

void ph_generate (perfect_hash *h, long long *s, int n) {


  assert (h->code == ((void*)0));
  int d = n * (1 + 0.1);

  h->d = d;
  h->code = dl_malloc0 (get_code_len (d));
  h->used = dl_malloc0 (get_used_len (d));
  assert (sizeof (int) == 4);
  h->sums = dl_malloc0 (get_sums_len (d));

  int en = 2 * d, vn = d * 2;

  va = dl_malloc (sizeof (int) * en),
  ne = dl_malloc (sizeof (int) * en);
  st = dl_malloc (sizeof (int) * (vn)),
  was = dl_malloc (sizeof (int) * (vn)),
  di = dl_malloc (sizeof (int) * (vn));


  int bad = 0;

  int mul0 = 301, mul1 = 303;
  while (1) {
    memset (st, -1, sizeof (int) * (2 * d));



    int i;
    en = 0;
    for (i = 0; i < n; i++) {
      int h0 = poly_h (s[i], mul0, d), h1 = poly_h (s[i], mul1, d) + d;



      ne[en] = st[h0];
      st[h0] = en;
      va[en++] = h1;

      ne[en] = st[h1];
      st[h1] = en;
      va[en++] = h0;
    }

    memset (was, 0, sizeof (int) * vn);
    int f = 1;
    for (i = 0; i < d && f; i++) {
      if (!was[i]) {
        f &= dfs (i, -1, 0);
      }
    }


    if (f) {
      int un =0;
      for (i = 0; i < vn; i++) {
        if (was[i]) {
          if (di[i] % 4 == 1 || di[i] % 4 == 2) {
            set_bit (h->code, i);
          }
          if (di[i]) {
            set_bit (h->used, i);
            un++;
          }
        }
      }


      int cur = 0;
      for (i = 0; i < vn; i++) {
        if ((i & 63) == 0) {
          h->sums[i >> 6] = cur;
        }
        if (get_bit (h->used, i)) {
          cur++;
        }
      }

      h->mul0 = mul0;
      h->mul1 = mul1;
      break;
    }
    bad++;

    mul0 = R(1, 1000000000);
    mul1 = R(1, 1000000000);
  }

  en = 2 * d;
  dl_free (va, sizeof (int) * en);
  dl_free (ne, sizeof (int) * en);
  dl_free (st, sizeof (int) * (vn));
  dl_free (was, sizeof (int) * (vn));
  dl_free (di, sizeof (int) * (vn));

}
