
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRANS_HASH_SIZE ;

__attribute__((used)) static int transaction_bucket (long long transaction_id) {
  return (transaction_id % (TRANS_HASH_SIZE - 5)) & (TRANS_HASH_SIZE - 1);
}
