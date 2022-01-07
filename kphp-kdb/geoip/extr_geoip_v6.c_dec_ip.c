
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6 {int* data; } ;



void dec_ip (struct ipv6 *a) {
  int i = 7;
  while (i >= 0) {
    if (a->data[i] > 0) {
      a->data[i] --;
      return;
    } else {
      a->data[i] = 0xffff;
      i --;
    }
  }
}
