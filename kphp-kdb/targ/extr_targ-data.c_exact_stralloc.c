
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* zmalloc (int) ;

__attribute__((used)) static char *exact_stralloc (int len) {





  char *res = zmalloc (len + 1);

  res[len] = 0;
  return res;
}
