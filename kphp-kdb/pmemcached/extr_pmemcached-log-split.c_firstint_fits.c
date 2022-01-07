
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long copy_mod ;
 unsigned long long copy_rem ;
 unsigned long long extract_num (char const* const,int,int *) ;

int firstint_fits (const char *const key, int key_len) {
  unsigned long long id = extract_num (key, key_len, ((void*)0));
  return id % copy_mod == copy_rem;
}
