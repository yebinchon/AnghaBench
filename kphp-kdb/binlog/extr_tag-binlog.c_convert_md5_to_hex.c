
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* hcyf ;

__attribute__((used)) static void convert_md5_to_hex (char *output, unsigned char *hash) {
  int i;
  for (i = 0; i < 16; i++) {
    output[2*i] = hcyf[(hash[i] >> 4) & 15];
    output[2*i+1] = hcyf[hash[i] & 15];
  }
  output[32] = 0;
}
