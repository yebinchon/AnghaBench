
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nb_iterator {int dummy; } ;
struct connection {int In; } ;


 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int nbit_read_in (struct nb_iterator*,int*,int) ;
 int nbit_set (struct nb_iterator*,int *) ;
 int stderr ;

void dump_next_rpc_packet_limit (struct connection *c, int max_ints) {
  struct nb_iterator it;
  int i = 0, len = 4, x;
  nbit_set (&it, &c->In);
  while (i * 4 < len && i < max_ints) {
    assert (nbit_read_in (&it, &x, 4) == 4);
    if (!i) {
      len = x;
    }
    fprintf (stderr, "%08x ", x);
    if (!(++i & 7)) {
      fprintf (stderr, "\n");
    }
  }
  fprintf (stderr, "\n");
}
