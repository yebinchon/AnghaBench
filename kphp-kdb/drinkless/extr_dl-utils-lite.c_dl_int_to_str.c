
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int snprintf (char*,int,char*,int) ;

const char *dl_int_to_str (int x) {
  static char tmp[50];
  snprintf (tmp, sizeof (tmp), "%d", x);
  return tmp;
}
