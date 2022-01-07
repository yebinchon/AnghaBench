
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static char *show_macaddr (long long macaddr) {
  int i;
  static char z[6 * 3];
  for (i = 5; i >= 0; i--) {
    sprintf (z + i * 3, "%02x", (unsigned) (macaddr & 0xff));
    z[i * 3 + 2] = (i < 5) ? ':' : 0;
  }
  return z;
}
