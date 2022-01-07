
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 long long char_to_int (char) ;

long long get_watchcat_id (char *s) {
  long long id = 0, mul = 1;
  assert (s[0] == 'w');
  assert (s[1] == '_');
  s += 2;
  while (*s) {
    id += char_to_int (*s) * mul;
    mul *= 62;
    s++;
  }

  return id;
}
