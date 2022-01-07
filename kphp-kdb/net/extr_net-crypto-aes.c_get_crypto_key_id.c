
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pwd_buf ;
 int pwd_len ;

int get_crypto_key_id (void) {
  if (pwd_len >= 4) {
    return *(int *)pwd_buf;
  } else {
    return 0;
  }
}
