
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ping; int snapFlags; } ;
typedef TYPE_1__ snapshot_t ;
struct TYPE_5__ {int* snapshotSamples; int snapshotCount; int * snapshotFlags; } ;


 int LAG_SAMPLES ;
 TYPE_2__ lagometer ;

void CG_AddLagometerSnapshotInfo( snapshot_t *snap ) {

 if ( !snap ) {
  lagometer.snapshotSamples[ lagometer.snapshotCount & ( LAG_SAMPLES - 1) ] = -1;
  lagometer.snapshotCount++;
  return;
 }


 lagometer.snapshotSamples[ lagometer.snapshotCount & ( LAG_SAMPLES - 1) ] = snap->ping;
 lagometer.snapshotFlags[ lagometer.snapshotCount & ( LAG_SAMPLES - 1) ] = snap->snapFlags;
 lagometer.snapshotCount++;
}
