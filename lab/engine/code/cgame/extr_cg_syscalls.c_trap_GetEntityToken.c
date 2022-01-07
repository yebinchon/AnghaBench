
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int CG_GET_ENTITY_TOKEN ;
 int syscall (int ,char*,int) ;

qboolean trap_GetEntityToken( char *buffer, int bufferSize ) {
 return syscall( CG_GET_ENTITY_TOKEN, buffer, bufferSize );
}
