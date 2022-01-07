
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_GETCURRENTSNAPSHOTNUMBER ;
 int syscall (int ,int*,int*) ;

void trap_GetCurrentSnapshotNumber( int *snapshotNumber, int *serverTime ) {
 syscall( CG_GETCURRENTSNAPSHOTNUMBER, snapshotNumber, serverTime );
}
