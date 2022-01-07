
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bcode_iterator ;


 int assert (int) ;
 int bcode_iter_get_val (int *,int) ;
 int bcode_iter_init (int *,unsigned char*,int,int,int) ;

int bcode_encode_list (int *P, int len, int tot_items, unsigned char *res) {
  assert (len > 0);

  unsigned char *cur = res;

  int k = 0;
  int p = 1;

  while (p <= tot_items) {
    p += p;
    k++;
  }
  int left = 8, i;
  *cur = 0;

  for (i = 0; i < len; i++) {
    int c = P[i];
    int ck = k;

    while (ck > left) {
      ck -= left;
      *cur += (unsigned char)((c >> ck) << (8 - left));
      left = 8;
      *++cur = 0;
    }

    *cur += (unsigned char)((c & ((1 << ck) - 1)) << (8 - left));
    left -= ck;
  }


  bcode_iterator it;
  bcode_iter_init (&it, res, tot_items, (cur - res) + 1, tot_items);
  for (i = 0; i < len; i++) {

    assert (bcode_iter_get_val (&it, i) == P[i]);
  }
  return (cur - res) + 1;
}
