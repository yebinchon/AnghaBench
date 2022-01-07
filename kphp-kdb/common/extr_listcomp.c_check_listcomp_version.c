
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int listcomp_version ;

int check_listcomp_version (int version) {
  if ( (version ^ listcomp_version) & 0xffff0000) {
    return 0;
  }
  if ( (version & 0xffff) > (listcomp_version & 0xffff)) {
    return 0;
  }
  return 1;
}
