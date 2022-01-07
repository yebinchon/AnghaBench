
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sublist_descr {int dummy; } ;


 struct sublist_descr PeerFlagFilter ;

struct sublist_descr *get_peer_sublist_type (void) {
  return &PeerFlagFilter;
}
