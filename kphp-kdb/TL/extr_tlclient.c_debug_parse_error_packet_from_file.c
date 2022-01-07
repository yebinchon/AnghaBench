
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rpc_read_packet_from_file (char*) ;
 int rpcc_log_error (int) ;

int debug_parse_error_packet_from_file (char *s) {
  int r = rpc_read_packet_from_file (s);
  if (r < 0) {
    return r;
  }
  return rpcc_log_error (4 * r);
}
