
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int snprintf (char*,int,char*,long long) ;

const char *dl_ll_to_hex (long long x) {
  static char tmp[50];
  snprintf (tmp, sizeof (tmp), "%llx", x);
  return tmp;
}
