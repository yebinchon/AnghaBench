
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val_n; unsigned int hash_st; int rand_n; unsigned int hash_mul; int perm_last; int perm_middle; int perm_first; } ;
typedef TYPE_1__ dl_crypto ;


 unsigned int N ;
 int apply_perm (char*,int ,int) ;
 int decode_str (char*,int) ;
 int encode_str (char*,int) ;
 scalar_t__ rand () ;

void dl_crypto_encode (dl_crypto *cr, char *s, char *t) {
  encode_str (s, cr->val_n);
  apply_perm (s, cr->perm_first, cr->val_n);

  int i;
  unsigned int h = cr->hash_st;
  for (i = 0; i < cr->rand_n; i++) {
    t[i] = (char)((unsigned int)rand() % N);
    h = h * cr->hash_mul + t[i];
  }

  for (i = 0; i < cr->val_n; i++) {
    t[i + cr->rand_n] = (char)((s[i] + N - h % N) % N);
    h = h * cr->hash_mul + s[i];
  }

  int n = cr->val_n + cr->rand_n;

  apply_perm (t, cr->perm_middle, n);

  h = 0;
  for (i = 0; i < n; i++) {
    char c = t[i];
    t[i] = (char)((t[i] + N - h % N) % N);
    h += c;
  }

  apply_perm (t, cr->perm_last, n);
  decode_str (t, n);
}
