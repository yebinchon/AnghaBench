
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 int CG_FS_READ ;
 int syscall (int ,void*,int,int ) ;

void trap_FS_Read( void *buffer, int len, fileHandle_t f ) {
 syscall( CG_FS_READ, buffer, len, f );
}
