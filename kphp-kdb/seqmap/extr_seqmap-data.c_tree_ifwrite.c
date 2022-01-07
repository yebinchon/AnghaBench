
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int key_len; int value_len; int value; int key; } ;


 int* B ;
 int Bsize ;
 scalar_t__* RR ;
 size_t Rmax ;
 scalar_t__ Rpos ;
 size_t Rt ;
 int memcpy (int*,int ,int) ;

int tree_ifwrite (struct item *I) {
  if (Rt < Rmax && RR[Rt] == Rpos) {
    Rt ++;
    Rpos ++;
    if (2 + I->key_len + I->value_len < Bsize) {
      B[0] = I->key_len;
      memcpy (B + 1, I->key, 4 * I->key_len);
      B += (1 + I->key_len);
      B[0] = I->value_len;
      memcpy (B + 1, I->value, 4 * I->value_len);
      B += (1 + I->value_len);
      Bsize -= (2 + I->key_len + I->value_len);
      return 0;
    } else {
      Rmax = Rt;
      return -1;
    }
  } else {
    Rpos ++;
    return 0;
  }
}
