
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,int ) ;
 int * ttt ;

inline int get_type (char *b) {
  int i;
  for (i = 0; i < 5; i++) {
    if (strcmp (b, ttt[i]) == 0) {
      return i;
    }
  }

  return -1;
}
