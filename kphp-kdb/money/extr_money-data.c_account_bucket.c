
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACC_HASH_SIZE ;

__attribute__((used)) static int account_bucket (int acc_type_id, long long acc_id) {
  return ((acc_id >> 24) * 239 + acc_id + acc_type_id * 997) & (ACC_HASH_SIZE - 1);
}
