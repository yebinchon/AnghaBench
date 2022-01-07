
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int messageNum; int serverTime; } ;
struct TYPE_4__ {TYPE_1__ snap; } ;


 TYPE_2__ cl ;

void CL_GetCurrentSnapshotNumber( int *snapshotNumber, int *serverTime ) {
 *snapshotNumber = cl.snap.messageNum;
 *serverTime = cl.snap.serverTime;
}
