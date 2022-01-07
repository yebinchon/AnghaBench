
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 unsigned long long extract_num (char const* const,unsigned long long,int *) ;
 unsigned long long hash_key (char const* const,unsigned long long) ;
 int split_mode ;
 unsigned long long split_modulo ;
 unsigned long long split_rem ;
 unsigned long long strlen (char const* const) ;

int conv_key (const char* const key) {
  unsigned long long id, i = -1;
  switch (split_mode) {
    case 129:
      id = hash_key(key, strlen(key));
      break;
    case 130:
      id = extract_num(key, strlen(key), ((void*)0));
      break;
    case 128:
      for (i = 0; key[i] && key[i] != '.'; i++)
        ;
      id = hash_key(key, i);
      break;
    default:
      assert("unknown split mode!" && 0);
  }
  return id % split_modulo == split_rem ? 0 : -1;
}
