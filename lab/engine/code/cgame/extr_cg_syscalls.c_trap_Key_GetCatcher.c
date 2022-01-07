
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_KEY_GETCATCHER ;
 int syscall (int ) ;

int trap_Key_GetCatcher( void ) {
 return syscall( CG_KEY_GETCATCHER );
}
