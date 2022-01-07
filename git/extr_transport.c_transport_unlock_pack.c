
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {scalar_t__ pack_lockfile; } ;


 int FREE_AND_NULL (scalar_t__) ;
 int unlink_or_warn (scalar_t__) ;

void transport_unlock_pack(struct transport *transport)
{
 if (transport->pack_lockfile) {
  unlink_or_warn(transport->pack_lockfile);
  FREE_AND_NULL(transport->pack_lockfile);
 }
}
