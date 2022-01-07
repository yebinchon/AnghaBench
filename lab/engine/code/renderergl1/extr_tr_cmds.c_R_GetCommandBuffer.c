
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swapBuffersCommand_t ;


 int PAD (int,int) ;
 void* R_GetCommandBufferReserved (int,int ) ;

void *R_GetCommandBuffer( int bytes ) {
 return R_GetCommandBufferReserved( bytes, PAD( sizeof( swapBuffersCommand_t ), sizeof(void *) ) );
}
