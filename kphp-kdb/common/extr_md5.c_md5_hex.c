
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int md5 (unsigned char*,int,unsigned char*) ;

void md5_hex (char *input, int ilen, char output[32]) {
    static char out[16], hcyf[16] = "0123456789abcdef";
    int i;

    md5 ((unsigned char *) input, ilen, (unsigned char *) out);
    for (i = 0; i < 16; i++) {
      output[2*i] = hcyf[(out[i] >> 4) & 15];
      output[2*i+1] = hcyf[out[i] & 15];
    }
}
