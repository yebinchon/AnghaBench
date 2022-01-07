
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_BAD_VALUE ;
 int tl_fetch_int () ;
 int tl_fetch_set_error_format (int ,char*) ;

int tl_parse_peer_id (void) {
  int peer_id = tl_fetch_int ();
  if (!peer_id) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Peer id must be non-zero integer");
    return -1;
  }
  return peer_id;
}
