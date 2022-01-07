
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

void dump_rpc_packet (int *packet) {
  int len = (*packet + 3) >> 2, i;
  for (i = 0; i < len; i++) {
    fprintf (stderr, "%08x ", packet[i]);
    if ((i & 3) == 3) {
      fprintf (stderr, "\n");
    }
  }
  fprintf (stderr, "\n");
}
