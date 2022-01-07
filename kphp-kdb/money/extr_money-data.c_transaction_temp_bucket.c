
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRANS_TEMP_HASH_SIZE ;

__attribute__((used)) static int transaction_temp_bucket (int temp_id) {
  return temp_id & (TRANS_TEMP_HASH_SIZE - 1);
}
