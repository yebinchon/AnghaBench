
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_t ;



__attribute__((used)) static inline hash_t field_value_hash (int field_id, int value) {
  return (((hash_t) field_id << 32) | (unsigned) value);
}
