
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_DOT ;
 int SM_FIRSTINT ;
 int SM_HASH ;
 int SM_NONE ;
 int strncmp (char*,char*,int) ;

int get_split_mode (char *str) {
  if (!strncmp (str, "hash", 4)) {
    return SM_HASH;
  } else if (!strncmp (str, "firstint", 8)) {
    return SM_FIRSTINT;
  } else if (!strncmp (str, "dot", 4)) {
    return SM_DOT;
  }
  return SM_NONE;
}
