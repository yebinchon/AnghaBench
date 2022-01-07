
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void a2hex (unsigned char *a, int len, char *output) {
  static char hcyf[16] = "0123456789abcdef";
  int i;
  for (i = 0; i < len; i++) {
    output[2*i] = hcyf[(a[i] >> 4)];
    output[2*i+1] = hcyf[a[i] & 15];
  }
  output[2*len] = 0;
}
