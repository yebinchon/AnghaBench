
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int long_lock_secret; int transaction_id; } ;
typedef TYPE_1__ transaction_t ;
typedef int money_auth_code_t ;


 int assert (int) ;
 int md5 (unsigned char*,int,void*) ;
 int sprintf (char*,char*,int ,int ) ;

void compute_lock_codes (transaction_t *T, money_auth_code_t codes[2]) {
  static char buff[256];
  assert (T->long_lock_secret > 0);
  int L = sprintf (buff, "#Tr%lld\xcc%dXPEH", T->transaction_id, T->long_lock_secret);
  md5 ((unsigned char *) buff, L, (void *) codes);
  codes[0] ^= codes[1];
}
