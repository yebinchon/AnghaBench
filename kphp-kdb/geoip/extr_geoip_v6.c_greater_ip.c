
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipv6 {scalar_t__* data; } ;



int greater_ip (struct ipv6 a, struct ipv6 b) {
  int i;
  for (i = 0; i < 8; i++) {
    if (a.data[i] > b.data[i]) {
      return 1;
    }
    if (a.data[i] < b.data[i]) {
      return 0;
    }
  }
  return 0;
}
