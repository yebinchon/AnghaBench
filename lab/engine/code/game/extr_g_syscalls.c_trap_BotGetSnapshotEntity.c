
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_GET_SNAPSHOT_ENTITY ;
 int syscall (int ,int,int) ;

int trap_BotGetSnapshotEntity( int clientNum, int sequence ) {
 return syscall( BOTLIB_GET_SNAPSHOT_ENTITY, clientNum, sequence );
}
