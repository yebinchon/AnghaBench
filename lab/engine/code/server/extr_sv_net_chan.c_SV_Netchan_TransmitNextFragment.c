
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ unsentFragments; } ;
struct TYPE_6__ {scalar_t__ netchan_start_queue; TYPE_5__ netchan; } ;
typedef TYPE_1__ client_t ;


 int Netchan_TransmitNextFragment (TYPE_5__*) ;
 int SV_Netchan_TransmitNextInQueue (TYPE_1__*) ;
 int SV_RateMsec (TYPE_1__*) ;

int SV_Netchan_TransmitNextFragment(client_t *client)
{
 if(client->netchan.unsentFragments)
 {
  Netchan_TransmitNextFragment(&client->netchan);
  return SV_RateMsec(client);
 }
 else if(client->netchan_start_queue)
 {
  SV_Netchan_TransmitNextInQueue(client);
  return SV_RateMsec(client);
 }

 return -1;
}
