
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int flush_connection_output (struct connection*) ;
 int fprintf (int ,char*,int) ;
 int next_ad_id ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int verbosity ;
 int write_out (int *,char*,int) ;

void new_request2 (struct connection *c) {
  static char buff[256];
  int len = sprintf (buff, "get ad_query%d\r\n", next_ad_id);
  write_out (&c->Out, buff, len);
  flush_connection_output (c);
  if (verbosity > 1) {
    fprintf (stderr, "Requested query for ad %d\n", next_ad_id);
  }
}
