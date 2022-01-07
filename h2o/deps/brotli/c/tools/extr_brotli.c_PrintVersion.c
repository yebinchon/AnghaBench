
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BROTLI_VERSION ;
 int fprintf (int ,char*,int,int,int) ;
 int stdout ;

__attribute__((used)) static void PrintVersion(void) {
  int major = BROTLI_VERSION >> 24;
  int minor = (BROTLI_VERSION >> 12) & 0xFFF;
  int patch = BROTLI_VERSION & 0xFFF;
  fprintf(stdout, "brotli %d.%d.%d\n", major, minor, patch);
}
