
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6 {scalar_t__* data; } ;


 int assert (int) ;

void set_bit (struct ipv6 *a, int level) {
  assert (level < 128);
  int q = (7 - (level / 16));
  a->data[q] += (1 << (level & 15));
  if (!a->data[q]) {
    q --;
    while (q >= 0) {
      a->data[q] ++;
      if (a->data[q]) {
        return;
      }
      q --;
    }
  }
}
