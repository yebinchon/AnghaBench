
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* c; } ;
typedef TYPE_1__ md5_t ;


 int kprintf (char*,char*,char*) ;

__attribute__((used)) static void kprintf_md5 (char *msg, md5_t *m, int len) {
  static char output[33], hcyf[16] = "0123456789abcdef";
  int i;
  for (i = 0; i < len; i++) {
    output[2*i] = hcyf[(m->c[i] >> 4)];
    output[2*i+1] = hcyf[m->c[i] & 15];
  }
  output[2*len] = 0;
  kprintf ("%s%s\n", msg, output);
}
