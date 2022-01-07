
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int copy_mod ;
 unsigned int copy_rem ;
 unsigned int hash_key (char const* const,int) ;
 char* memchr (char const* const,char,int) ;

int dot_fits (const char *const key, int key_len) {
  char *dot_pos = memchr (key, '.', key_len);
  if (dot_pos) {
    key_len = dot_pos - key;
  }
  unsigned id = hash_key (key, key_len);
  return id % copy_mod == copy_rem;
}
