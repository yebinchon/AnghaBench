
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 int G_FS_SEEK ;
 int syscall (int ,int ,long,int) ;

int trap_FS_Seek( fileHandle_t f, long offset, int origin ) {
 return syscall( G_FS_SEEK, f, offset, origin );
}
