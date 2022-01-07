
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_ACCOUNT_TYPE ;
 int assert (int) ;
 int sprintf (char*,char*,long long) ;

char *store_acc_id (char *to, int acc_type_id, long long acc_id) {
  int x;
  assert (acc_type_id >= 0 && acc_type_id <= MAX_ACCOUNT_TYPE);
  if (acc_type_id >= 27 * 27) {
    *to++ = 64 + (acc_type_id / (27 * 27));
  }
  if (acc_type_id >= 27) {
    x = acc_type_id / 27 % 27;
    *to++ = (x > 0 ? 64 + x : '_');
  }
  if (acc_type_id) {
    x = acc_type_id % 27;
    *to++ = (x > 0 ? 64 + x : '_');
  }
  return to + sprintf (to, "%lld", acc_id);
}
