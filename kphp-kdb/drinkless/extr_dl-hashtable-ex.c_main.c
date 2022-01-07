
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x; int y; } ;
typedef TYPE_1__ shmap_pair_ll_int ;
typedef int ll ;
struct TYPE_8__ {int y; } ;


 int assert (int) ;
 int fprintf (int ,char*,int,...) ;
 int h ;
 int scanf (char*,...) ;
 TYPE_5__* shmap_ll_int_add (int *,TYPE_1__) ;
 int shmap_ll_int_del (int *,TYPE_1__) ;
 TYPE_1__* shmap_ll_int_get (int *,TYPE_1__) ;
 int shmap_ll_int_init (int *) ;
 int stderr ;

int main (void) {
  shmap_ll_int_init (&h);

  char op[50];
  int tn = 0;
  while (scanf ("%s", op) == 1) {
    tn++;
    if (tn % 1000 == 0) {
      fprintf (stderr, "%d\n", tn);
    }
    ll x;
    int val;
    if (op[0] == 's') {
      scanf ("%lld%d", &x, &val);

      shmap_pair_ll_int p;
      p.x = x;
      shmap_ll_int_add (&h, p)->y = val;
    } else if (op[0] == 'd') {
      scanf ("%lld", &x);





      shmap_pair_ll_int p;
      p.x = x;
      shmap_ll_int_del (&h, p);





    } else if (op[0] == 'g') {
      scanf ("%lld%d", &x, &val);

      shmap_pair_ll_int p, *r;
      p.x = x;
      r = shmap_ll_int_get (&h, p);
      int cval = -1;
      if (r != ((void*)0)) {
        cval = r->y;
      }
      if (val != cval) {
        fprintf (stderr, "%d vs %d\n", val, cval);
      }
      assert (val == cval);
    }



    int cnt;
    scanf ("%d", &cnt);

  }
  return 0;
}
