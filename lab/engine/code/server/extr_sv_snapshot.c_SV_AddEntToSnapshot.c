
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ snapshotCounter; } ;
typedef TYPE_2__ svEntity_t ;
struct TYPE_11__ {size_t numSnapshotEntities; int * snapshotEntities; } ;
typedef TYPE_3__ snapshotEntityNumbers_t ;
struct TYPE_9__ {int number; } ;
struct TYPE_12__ {TYPE_1__ s; } ;
typedef TYPE_4__ sharedEntity_t ;
struct TYPE_13__ {scalar_t__ snapshotCounter; } ;


 size_t MAX_SNAPSHOT_ENTITIES ;
 TYPE_5__ sv ;

__attribute__((used)) static void SV_AddEntToSnapshot( svEntity_t *svEnt, sharedEntity_t *gEnt, snapshotEntityNumbers_t *eNums ) {

 if ( svEnt->snapshotCounter == sv.snapshotCounter ) {
  return;
 }
 svEnt->snapshotCounter = sv.snapshotCounter;


 if ( eNums->numSnapshotEntities == MAX_SNAPSHOT_ENTITIES ) {
  return;
 }

 eNums->snapshotEntities[ eNums->numSnapshotEntities ] = gEnt->s.number;
 eNums->numSnapshotEntities++;
}
