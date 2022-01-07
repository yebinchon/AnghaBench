
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct network_packetsize_payload {scalar_t__ last_fired_bytes; int payload; TYPE_1__* stats; scalar_t__ (* callback ) (TYPE_1__*,int ) ;} ;
struct TYPE_2__ {scalar_t__ received_bytes; } ;


 int GIT_EUSER ;
 scalar_t__ NETWORK_XFER_THRESHOLD ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int network_packetsize(size_t received, void *payload)
{
 struct network_packetsize_payload *npp = (struct network_packetsize_payload*)payload;


 npp->stats->received_bytes += received;


 if ((npp->stats->received_bytes - npp->last_fired_bytes) > NETWORK_XFER_THRESHOLD) {
  npp->last_fired_bytes = npp->stats->received_bytes;

  if (npp->callback(npp->stats, npp->payload))
   return GIT_EUSER;
 }

 return 0;
}
