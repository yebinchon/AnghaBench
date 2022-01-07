
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val_n; int rand_n; unsigned int hash_st; unsigned int hash_mul; int perm_first; int perm_middle; int perm_last; } ;
typedef TYPE_1__ dl_crypto ;


 char N ;
 int apply_perm_rev (char*,int ,int) ;
 int decode_str (char*,int) ;
 int encode_str (char*,int) ;

void dl_crypto_decode (dl_crypto *cr, char *s, char *t) {
  int n = cr->val_n + cr->rand_n;
  encode_str (s, n);
  apply_perm_rev (s, cr->perm_last, n);

  int i;
  unsigned int h = 0;
  for (i = 0; i < n; i++) {
    s[i] = (char)((s[i] + h) % N);
    h += s[i];
  }

  apply_perm_rev (s, cr->perm_middle, n);

  h = cr->hash_st;
  for (i = 0; i < cr->rand_n; i++) {
    h = h * cr->hash_mul + s[i];
  }

  for (i = 0; i < cr->val_n; i++) {
    t[i] = (char)((s[i + cr->rand_n] + N + h % N) % N);
    h = h * cr->hash_mul + t[i];
  }

  apply_perm_rev (t, cr->perm_first, cr->val_n);
  decode_str (t, cr->val_n);
}
