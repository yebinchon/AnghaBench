
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 int CG_FS_WRITE ;
 int syscall (int ,void const*,int,int ) ;

void trap_FS_Write( const void *buffer, int len, fileHandle_t f ) {
 syscall( CG_FS_WRITE, buffer, len, f );
}
