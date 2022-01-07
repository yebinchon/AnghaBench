
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hcyf ;

const char *get_md5 (unsigned char a[16]) {
  static char output[33];
  int i;
  for (i = 0; i < 16; i++) {
    output[2*i] = hcyf[(a[i] >> 4) & 15];
    output[2*i+1] = hcyf[a[i] & 15];
  }
  output[32] = 0;
  return output;
}
