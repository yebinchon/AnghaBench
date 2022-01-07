
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int exit (int ) ;
 int flush_connection_output (struct connection*) ;
 int fprintf (int ,char*,scalar_t__) ;
 scalar_t__ max_ad_id ;
 scalar_t__ next_ad_id ;
 int sprintf (char*,char*,scalar_t__) ;
 int stderr ;
 int verbosity ;
 int write_out (int *,char*,int) ;

void new_request1 (struct connection *c) {
  if (next_ad_id > max_ad_id) {
    if (verbosity > 0) {
      fprintf (stderr, "%d ads complete, exiting\n", max_ad_id);
    }
    exit (0);
  }
  static char buff[256];
  int len = sprintf (buff, "get ad_info%d\r\n", next_ad_id);
  write_out (&c->Out, buff, len);
  flush_connection_output (c);
  if (verbosity > 1) {
    fprintf (stderr, "Requested information about ad %d\n", next_ad_id);
  }
}
