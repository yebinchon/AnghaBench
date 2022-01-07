
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iCode_iterator ;


 int assert (int) ;
 int iCode_f (int*,int,int,int ,unsigned char**,int*) ;
 int iCode_iter_init (int *,unsigned char*,int,int,int) ;
 int iCode_iter_next (int *) ;
 int iCode_iter_val (int *) ;
 int iCode_write (int,unsigned char**,int*,int) ;

int iCode_encode_list (int *P, int len, int tot_items, unsigned char *res) {
  assert (len > 0);

  unsigned char *st = res;

  int skip = 8;
  res--;
  iCode_write (len - 1, &res, &skip, tot_items);
  iCode_f (P, len, tot_items, 0, &res, &skip);


  int i;
  iCode_iterator it;
  iCode_iter_init (&it, st, tot_items, res - st + 1, tot_items);




  for (i = 0; i < len; i++) {

    assert (iCode_iter_val (&it) == P[i]);
    iCode_iter_next (&it);
  }
  assert (iCode_iter_val (&it) == 0);

  return res - st + 1;
}
