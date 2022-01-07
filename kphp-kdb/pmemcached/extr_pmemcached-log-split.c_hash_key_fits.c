
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int copy_mod ;
 unsigned int copy_rem ;
 unsigned int hash_key (char const* const,int) ;

int hash_key_fits (const char *const key, int key_len) {
  unsigned id = hash_key (key, key_len);
  return id % copy_mod == copy_rem;
}
