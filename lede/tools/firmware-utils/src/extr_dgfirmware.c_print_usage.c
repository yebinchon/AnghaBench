
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void print_usage(void)
{
  fprintf(stderr, "usage: dgfirmware [<opts>] <img>\n");
  fprintf(stderr, "  <img>               firmware image filename\n");
  fprintf(stderr, "  <opts>  -h          print this message\n");
  fprintf(stderr, "          -f          fix the checksum\n");
  fprintf(stderr, "          -x  <file>  extract the rootfs file to <file>\n");
  fprintf(stderr, "          -xk <file>  extract the kernel to <file>\n");
  fprintf(stderr, "          -m  <file>  merge in rootfs fil\e from <file>\n");
  fprintf(stderr, "          -k  <file>  merge in kernel from <file>\n");
  fprintf(stderr, "          -w  <file>  write back the modified firmware\n");
}
