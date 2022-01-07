
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_QNAME ;
 int add_event (int ,char*,int,int,int,int) ;
 int fprintf (int ,char*,char*,int,char*,int,int,int) ;
 int get_queue (char*,int ) ;
 int stderr ;
 int verbosity ;

int do_add_event (char *qname, int qname_len, char *data, int data_len, int x, int y, int ttl) {
  if (verbosity > 2) {
    fprintf (stderr, "Queue name [%s], data %d:[%s] { & %d = %d} ttl = %d\n", qname, data_len, data, x, y, ttl);
  }


  if (qname_len <= 0 || data_len <= 0 || qname_len > MAX_QNAME || data_len > 32768) {
    return 0;
  }

  return add_event (get_queue (qname, 0), data, data_len, x, y, ttl);
}
