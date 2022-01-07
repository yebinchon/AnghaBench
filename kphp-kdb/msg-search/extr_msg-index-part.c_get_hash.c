
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIME ;
 int* User ;
 int* UserList ;
 int assert (int) ;
 int tot_users ;

int get_hash (int x) {
  assert (x > 0);
  int h1 = x % PRIME, h2 = x % (PRIME - 1) + 1;
  while (User[h1] && User[h1] != x) {
    h1 += h2;
    if (h1 >= PRIME) h1 -= PRIME;
  }
  if (!User[h1]) {
    User[h1] = x;
    assert (tot_users < PRIME / 2);
    UserList[tot_users++] = x;
  };

  return h1;
}
