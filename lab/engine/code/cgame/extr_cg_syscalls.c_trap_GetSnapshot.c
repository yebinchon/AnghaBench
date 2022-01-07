
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snapshot_t ;
typedef int qboolean ;


 int CG_GETSNAPSHOT ;
 int syscall (int ,int,int *) ;

qboolean trap_GetSnapshot( int snapshotNumber, snapshot_t *snapshot ) {
 return syscall( CG_GETSNAPSHOT, snapshotNumber, snapshot );
}
