
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;


 int gzwrite (int ,char*,int) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int tar_write_header (gzFile f, char b[512]) {
  unsigned chksum = 8 * 32;
  int i;
  for (i = 0; i < 512; i++) {
    chksum += (unsigned char) b[i];
  }
  chksum &= 0777777;
  sprintf (b + 148, "%06o", chksum);
  b[155] = ' ';
  return gzwrite (f, b, 512) == 512 ? 0 : -1;
}
