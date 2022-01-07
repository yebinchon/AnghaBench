
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int mcc_default_check_perm (struct connection*) ;

int mcc_crypto_check_perm (struct connection *c) {
  int x = mcc_default_check_perm (c);
  if (x > 0) {
    return 2;
  } else {
    return x;
  }
}
