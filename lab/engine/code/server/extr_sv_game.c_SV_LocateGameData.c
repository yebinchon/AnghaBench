
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sharedEntity_t ;
typedef int playerState_t ;
struct TYPE_2__ {int gentitySize; int num_entities; int gameClientSize; int * gameClients; int * gentities; } ;


 TYPE_1__ sv ;

void SV_LocateGameData( sharedEntity_t *gEnts, int numGEntities, int sizeofGEntity_t,
        playerState_t *clients, int sizeofGameClient ) {
 sv.gentities = gEnts;
 sv.gentitySize = sizeofGEntity_t;
 sv.num_entities = numGEntities;

 sv.gameClients = clients;
 sv.gameClientSize = sizeofGameClient;
}
