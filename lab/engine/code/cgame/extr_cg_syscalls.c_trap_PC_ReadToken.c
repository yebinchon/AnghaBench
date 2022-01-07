
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pc_token_t ;


 int CG_PC_READ_TOKEN ;
 int syscall (int ,int,int *) ;

int trap_PC_ReadToken( int handle, pc_token_t *pc_token ) {
 return syscall( CG_PC_READ_TOKEN, handle, pc_token );
}
