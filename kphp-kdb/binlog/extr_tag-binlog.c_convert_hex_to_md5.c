
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int kprintf (char*,int const) ;
 int ord (char) ;
 int strlen (char*) ;

__attribute__((used)) static void convert_hex_to_md5 (unsigned char *output, char *hex) {
  int i;
  const int l = strlen (hex);
  if (l != 32) {
    kprintf ("Tag should contain 32 hexdigits. Given tag length is %d.\n", l);
    exit (1);
  }
  for (i = 0; i < 16; i++) {
    output[i] = (ord (hex[2*i]) << 4) + ord (hex[2*i+1]);
  }
}
