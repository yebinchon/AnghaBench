
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_t ;



int searchy_is_term (hash_t word) {
  return (word & 0x8000000000000000ULL) ? 1 : 0;
}
