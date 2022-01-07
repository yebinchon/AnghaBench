
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFF_SIZE ;
 scalar_t__ P ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char*,scalar_t__) ;
 int kprintf (char*,...) ;

__attribute__((used)) static int rpc_read_packet_from_file (const char *filename) {
  FILE *f = fopen (filename, "r");
  if (f == ((void*)0)) {
    kprintf ("fopen (\"%s\", \"r\") failed. %m\n", filename);
    return -1;
  }
  int r = 0;
  while (r < BUFF_SIZE && fscanf (f, "%x", P+r) == 1) {
    r++;
  }
  fclose (f);
  if (r == BUFF_SIZE) {
    kprintf ("RPC packet is too big.\n");
    return -1;
  }
  return r;
}
